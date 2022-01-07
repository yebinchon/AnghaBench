
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ itype; int utype; } ;
struct TYPE_7__ {long length; scalar_t__* data; int member_3; int member_2; int * member_1; int member_0; } ;
typedef TYPE_1__ BUF_MEM ;
typedef int ASN1_VALUE ;
typedef int ASN1_TLC ;
typedef TYPE_2__ ASN1_ITEM ;


 int ASN1_F_ASN1_D2I_EX_PRIMITIVE ;
 scalar_t__ ASN1_ITYPE_MSTRING ;
 int ASN1_R_ILLEGAL_NULL ;
 int ASN1_R_ILLEGAL_OPTIONAL_ANY ;
 int ASN1_R_ILLEGAL_TAGGED_ANY ;
 int ASN1_R_TYPE_NOT_CONSTRUCTED ;
 int ASN1_R_TYPE_NOT_PRIMITIVE ;
 int ASN1err (int ,int ) ;
 int BUF_MEM_grow_clean (TYPE_1__*,long) ;
 int ERR_R_MALLOC_FAILURE ;
 int ERR_R_NESTED_ASN1_ERROR ;
 int OPENSSL_free (scalar_t__*) ;
 int V_ASN1_ANY ;
 int V_ASN1_BOOLEAN ;
 int V_ASN1_ENUMERATED ;
 int V_ASN1_INTEGER ;
 int V_ASN1_NULL ;
 int V_ASN1_OBJECT ;
 int V_ASN1_OTHER ;
 int V_ASN1_SEQUENCE ;
 int V_ASN1_SET ;
 unsigned char V_ASN1_UNIVERSAL ;
 int asn1_check_tlen (long*,int*,unsigned char*,char*,char*,unsigned char const**,long,int,int,char,int *) ;
 int asn1_collect (TYPE_1__*,unsigned char const**,long,char,int,unsigned char,int ) ;
 int asn1_ex_c2i (int **,unsigned char const*,long,int,char*,TYPE_2__ const*) ;
 int asn1_find_end (unsigned char const**,long,char) ;
 int asn1_tlc_clear (int *) ;

__attribute__((used)) static int asn1_d2i_ex_primitive(ASN1_VALUE **pval,
                                 const unsigned char **in, long inlen,
                                 const ASN1_ITEM *it,
                                 int tag, int aclass, char opt, ASN1_TLC *ctx)
{
    int ret = 0, utype;
    long plen;
    char cst, inf, free_cont = 0;
    const unsigned char *p;
    BUF_MEM buf = { 0, ((void*)0), 0, 0 };
    const unsigned char *cont = ((void*)0);
    long len;
    if (!pval) {
        ASN1err(ASN1_F_ASN1_D2I_EX_PRIMITIVE, ASN1_R_ILLEGAL_NULL);
        return 0;
    }

    if (it->itype == ASN1_ITYPE_MSTRING) {
        utype = tag;
        tag = -1;
    } else
        utype = it->utype;

    if (utype == V_ASN1_ANY) {

        unsigned char oclass;
        if (tag >= 0) {
            ASN1err(ASN1_F_ASN1_D2I_EX_PRIMITIVE, ASN1_R_ILLEGAL_TAGGED_ANY);
            return 0;
        }
        if (opt) {
            ASN1err(ASN1_F_ASN1_D2I_EX_PRIMITIVE,
                    ASN1_R_ILLEGAL_OPTIONAL_ANY);
            return 0;
        }
        p = *in;
        ret = asn1_check_tlen(((void*)0), &utype, &oclass, ((void*)0), ((void*)0),
                              &p, inlen, -1, 0, 0, ctx);
        if (!ret) {
            ASN1err(ASN1_F_ASN1_D2I_EX_PRIMITIVE, ERR_R_NESTED_ASN1_ERROR);
            return 0;
        }
        if (oclass != V_ASN1_UNIVERSAL)
            utype = V_ASN1_OTHER;
    }
    if (tag == -1) {
        tag = utype;
        aclass = V_ASN1_UNIVERSAL;
    }
    p = *in;

    ret = asn1_check_tlen(&plen, ((void*)0), ((void*)0), &inf, &cst,
                          &p, inlen, tag, aclass, opt, ctx);
    if (!ret) {
        ASN1err(ASN1_F_ASN1_D2I_EX_PRIMITIVE, ERR_R_NESTED_ASN1_ERROR);
        return 0;
    } else if (ret == -1)
        return -1;
    ret = 0;

    if ((utype == V_ASN1_SEQUENCE)
        || (utype == V_ASN1_SET) || (utype == V_ASN1_OTHER)) {




        if (utype == V_ASN1_OTHER) {
            asn1_tlc_clear(ctx);
        }

        else if (!cst) {
            ASN1err(ASN1_F_ASN1_D2I_EX_PRIMITIVE,
                    ASN1_R_TYPE_NOT_CONSTRUCTED);
            return 0;
        }

        cont = *in;

        if (inf) {
            if (!asn1_find_end(&p, plen, inf))
                goto err;
            len = p - cont;
        } else {
            len = p - cont + plen;
            p += plen;
        }
    } else if (cst) {
        if (utype == V_ASN1_NULL || utype == V_ASN1_BOOLEAN
            || utype == V_ASN1_OBJECT || utype == V_ASN1_INTEGER
            || utype == V_ASN1_ENUMERATED) {
            ASN1err(ASN1_F_ASN1_D2I_EX_PRIMITIVE, ASN1_R_TYPE_NOT_PRIMITIVE);
            return 0;
        }


        free_cont = 1;






        if (!asn1_collect(&buf, &p, plen, inf, -1, V_ASN1_UNIVERSAL, 0)) {
            goto err;
        }
        len = buf.length;

        if (!BUF_MEM_grow_clean(&buf, len + 1)) {
            ASN1err(ASN1_F_ASN1_D2I_EX_PRIMITIVE, ERR_R_MALLOC_FAILURE);
            goto err;
        }
        buf.data[len] = 0;
        cont = (const unsigned char *)buf.data;
    } else {
        cont = p;
        len = plen;
        p += plen;
    }



    if (!asn1_ex_c2i(pval, cont, len, utype, &free_cont, it))
        goto err;

    *in = p;
    ret = 1;
 err:
    if (free_cont)
        OPENSSL_free(buf.data);
    return ret;
}
