
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ASN1_OBJECT ;


 int ASN1_F_D2I_ASN1_OBJECT ;
 int ASN1_R_BAD_OBJECT_HEADER ;
 int ASN1_R_EXPECTING_AN_OBJECT ;
 int ASN1_get_object (unsigned char const**,long*,int*,int*,long) ;
 int ASN1err (int ,int) ;
 int V_ASN1_OBJECT ;
 int * c2i_ASN1_OBJECT (int **,unsigned char const**,long) ;

ASN1_OBJECT *d2i_ASN1_OBJECT(ASN1_OBJECT **a, const unsigned char **pp,
                             long length)
{
    const unsigned char *p;
    long len;
    int tag, xclass;
    int inf, i;
    ASN1_OBJECT *ret = ((void*)0);
    p = *pp;
    inf = ASN1_get_object(&p, &len, &tag, &xclass, length);
    if (inf & 0x80) {
        i = ASN1_R_BAD_OBJECT_HEADER;
        goto err;
    }

    if (tag != V_ASN1_OBJECT) {
        i = ASN1_R_EXPECTING_AN_OBJECT;
        goto err;
    }
    ret = c2i_ASN1_OBJECT(a, &p, len);
    if (ret)
        *pp = p;
    return ret;
 err:
    ASN1err(ASN1_F_D2I_ASN1_OBJECT, i);
    return ((void*)0);
}
