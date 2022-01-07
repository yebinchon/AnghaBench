
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int exp_len; int exp_tag; int exp_constructed; int exp_class; scalar_t__ exp_pad; } ;
typedef TYPE_1__ tag_exp_type ;
struct TYPE_5__ {int imp_tag; int imp_class; int exp_count; int utype; TYPE_1__* exp_list; int format; int str; } ;
typedef TYPE_2__ tag_exp_arg ;
typedef int X509V3_CTX ;
typedef int ASN1_TYPE ;


 int ASN1_GEN_FORMAT_ASCII ;
 int ASN1_GEN_SEQ_MAX_DEPTH ;
 int ASN1_R_ILLEGAL_NESTED_TAGGING ;
 int ASN1_R_SEQUENCE_OR_SET_NEEDS_CONFIG ;
 int ASN1_R_UNKNOWN_TAG ;
 int ASN1_TYPE_free (int *) ;
 int ASN1_get_object (unsigned char const**,long*,int*,int*,int) ;
 int ASN1_object_size (int ,int,int) ;
 int ASN1_put_object (unsigned char**,int,long,int,int) ;
 scalar_t__ CONF_parse_list (char const*,char,int,int ,TYPE_2__*) ;
 int OPENSSL_free (unsigned char*) ;
 unsigned char* OPENSSL_malloc (int) ;
 int V_ASN1_CONSTRUCTED ;
 int V_ASN1_SEQUENCE ;
 int V_ASN1_SET ;
 int V_ASN1_UNIVERSAL ;
 int asn1_cb ;
 int * asn1_multi (int,int ,int *,int,int*) ;
 int * asn1_str2type (int ,int ,int) ;
 int * d2i_ASN1_TYPE (int *,unsigned char const**,int) ;
 int i2d_ASN1_TYPE (int *,unsigned char**) ;
 int memcpy (unsigned char*,unsigned char const*,int) ;

__attribute__((used)) static ASN1_TYPE *generate_v3(const char *str, X509V3_CTX *cnf, int depth,
                              int *perr)
{
    ASN1_TYPE *ret;
    tag_exp_arg asn1_tags;
    tag_exp_type *etmp;

    int i, len;

    unsigned char *orig_der = ((void*)0), *new_der = ((void*)0);
    const unsigned char *cpy_start;
    unsigned char *p;
    const unsigned char *cp;
    int cpy_len;
    long hdr_len = 0;
    int hdr_constructed = 0, hdr_tag, hdr_class;
    int r;

    asn1_tags.imp_tag = -1;
    asn1_tags.imp_class = -1;
    asn1_tags.format = ASN1_GEN_FORMAT_ASCII;
    asn1_tags.exp_count = 0;
    if (CONF_parse_list(str, ',', 1, asn1_cb, &asn1_tags) != 0) {
        *perr = ASN1_R_UNKNOWN_TAG;
        return ((void*)0);
    }

    if ((asn1_tags.utype == V_ASN1_SEQUENCE)
        || (asn1_tags.utype == V_ASN1_SET)) {
        if (!cnf) {
            *perr = ASN1_R_SEQUENCE_OR_SET_NEEDS_CONFIG;
            return ((void*)0);
        }
        if (depth >= ASN1_GEN_SEQ_MAX_DEPTH) {
            *perr = ASN1_R_ILLEGAL_NESTED_TAGGING;
            return ((void*)0);
        }
        ret = asn1_multi(asn1_tags.utype, asn1_tags.str, cnf, depth, perr);
    } else
        ret = asn1_str2type(asn1_tags.str, asn1_tags.format, asn1_tags.utype);

    if (!ret)
        return ((void*)0);


    if ((asn1_tags.imp_tag == -1) && (asn1_tags.exp_count == 0))
        return ret;


    cpy_len = i2d_ASN1_TYPE(ret, &orig_der);
    ASN1_TYPE_free(ret);
    ret = ((void*)0);

    cpy_start = orig_der;


    if (asn1_tags.imp_tag != -1) {


        r = ASN1_get_object(&cpy_start, &hdr_len, &hdr_tag, &hdr_class,
                            cpy_len);
        if (r & 0x80)
            goto err;

        cpy_len -= cpy_start - orig_der;




        if (r & 0x1) {

            hdr_constructed = 2;
            hdr_len = 0;
        } else

            hdr_constructed = r & V_ASN1_CONSTRUCTED;




        len = ASN1_object_size(0, hdr_len, asn1_tags.imp_tag);
    } else
        len = cpy_len;



    for (i = 0, etmp = asn1_tags.exp_list + asn1_tags.exp_count - 1;
         i < asn1_tags.exp_count; i++, etmp--) {

        len += etmp->exp_pad;
        etmp->exp_len = len;

        len = ASN1_object_size(0, len, etmp->exp_tag);
    }



    new_der = OPENSSL_malloc(len);
    if (new_der == ((void*)0))
        goto err;



    p = new_der;



    for (i = 0, etmp = asn1_tags.exp_list; i < asn1_tags.exp_count;
         i++, etmp++) {
        ASN1_put_object(&p, etmp->exp_constructed, etmp->exp_len,
                        etmp->exp_tag, etmp->exp_class);
        if (etmp->exp_pad)
            *p++ = 0;
    }



    if (asn1_tags.imp_tag != -1) {
        if (asn1_tags.imp_class == V_ASN1_UNIVERSAL
            && (asn1_tags.imp_tag == V_ASN1_SEQUENCE
                || asn1_tags.imp_tag == V_ASN1_SET))
            hdr_constructed = V_ASN1_CONSTRUCTED;
        ASN1_put_object(&p, hdr_constructed, hdr_len,
                        asn1_tags.imp_tag, asn1_tags.imp_class);
    }


    memcpy(p, cpy_start, cpy_len);

    cp = new_der;


    ret = d2i_ASN1_TYPE(((void*)0), &cp, len);

 err:
    OPENSSL_free(orig_der);
    OPENSSL_free(new_der);

    return ret;

}
