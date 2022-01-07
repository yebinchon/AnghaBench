
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ASN1_TYPE ;
typedef int ASN1_OCTET_STRING ;
typedef int ASN1_ITEM ;


 int ASN1_OCTET_STRING_free (int *) ;
 int * ASN1_TYPE_new () ;
 int ASN1_TYPE_set (int *,int ,int *) ;
 int * ASN1_item_pack (void*,int const*,int *) ;
 int V_ASN1_SEQUENCE ;

ASN1_TYPE *ASN1_TYPE_pack_sequence(const ASN1_ITEM *it, void *s, ASN1_TYPE **t)
{
    ASN1_OCTET_STRING *oct;
    ASN1_TYPE *rt;

    oct = ASN1_item_pack(s, it, ((void*)0));
    if (oct == ((void*)0))
        return ((void*)0);

    if (t && *t) {
        rt = *t;
    } else {
        rt = ASN1_TYPE_new();
        if (rt == ((void*)0)) {
            ASN1_OCTET_STRING_free(oct);
            return ((void*)0);
        }
        if (t)
            *t = rt;
    }
    ASN1_TYPE_set(rt, V_ASN1_SEQUENCE, oct);
    return rt;
}
