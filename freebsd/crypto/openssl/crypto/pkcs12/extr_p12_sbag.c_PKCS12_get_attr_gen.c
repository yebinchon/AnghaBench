
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PKCS8_PRIV_KEY_INFO ;
typedef int ASN1_TYPE ;


 int * PKCS12_get_attr_gen (int ,int) ;
 int PKCS8_pkey_get0_attrs (int *) ;

ASN1_TYPE *PKCS8_get_attr(PKCS8_PRIV_KEY_INFO *p8, int attr_nid)
{
    return PKCS12_get_attr_gen(PKCS8_pkey_get0_attrs(p8), attr_nid);
}
