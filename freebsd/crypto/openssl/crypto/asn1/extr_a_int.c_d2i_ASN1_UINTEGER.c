
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int type; unsigned char* data; int length; } ;
typedef TYPE_1__ ASN1_INTEGER ;


 int ASN1_F_D2I_ASN1_UINTEGER ;
 int ASN1_INTEGER_free (TYPE_1__*) ;
 TYPE_1__* ASN1_INTEGER_new () ;
 int ASN1_R_BAD_OBJECT_HEADER ;
 int ASN1_R_EXPECTING_AN_INTEGER ;
 int ASN1_get_object (unsigned char const**,long*,int*,int*,long) ;
 int ASN1err (int ,int) ;
 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_free (unsigned char*) ;
 unsigned char* OPENSSL_malloc (int) ;
 int V_ASN1_INTEGER ;
 int memcpy (unsigned char*,unsigned char const*,int) ;

ASN1_INTEGER *d2i_ASN1_UINTEGER(ASN1_INTEGER **a, const unsigned char **pp,
                                long length)
{
    ASN1_INTEGER *ret = ((void*)0);
    const unsigned char *p;
    unsigned char *s;
    long len;
    int inf, tag, xclass;
    int i;

    if ((a == ((void*)0)) || ((*a) == ((void*)0))) {
        if ((ret = ASN1_INTEGER_new()) == ((void*)0))
            return ((void*)0);
        ret->type = V_ASN1_INTEGER;
    } else
        ret = (*a);

    p = *pp;
    inf = ASN1_get_object(&p, &len, &tag, &xclass, length);
    if (inf & 0x80) {
        i = ASN1_R_BAD_OBJECT_HEADER;
        goto err;
    }

    if (tag != V_ASN1_INTEGER) {
        i = ASN1_R_EXPECTING_AN_INTEGER;
        goto err;
    }





    s = OPENSSL_malloc((int)len + 1);
    if (s == ((void*)0)) {
        i = ERR_R_MALLOC_FAILURE;
        goto err;
    }
    ret->type = V_ASN1_INTEGER;
    if (len) {
        if ((*p == 0) && (len != 1)) {
            p++;
            len--;
        }
        memcpy(s, p, (int)len);
        p += len;
    }

    OPENSSL_free(ret->data);
    ret->data = s;
    ret->length = (int)len;
    if (a != ((void*)0))
        (*a) = ret;
    *pp = p;
    return ret;
 err:
    ASN1err(ASN1_F_D2I_ASN1_UINTEGER, i);
    if ((a == ((void*)0)) || (*a != ret))
        ASN1_INTEGER_free(ret);
    return ((void*)0);
}
