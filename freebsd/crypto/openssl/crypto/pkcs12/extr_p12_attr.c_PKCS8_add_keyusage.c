
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PKCS8_PRIV_KEY_INFO ;


 int NID_key_usage ;
 int PKCS8_pkey_add1_attr_by_NID (int *,int ,int ,unsigned char*,int) ;
 int V_ASN1_BIT_STRING ;

int PKCS8_add_keyusage(PKCS8_PRIV_KEY_INFO *p8, int usage)
{
    unsigned char us_val = (unsigned char)usage;
    return PKCS8_pkey_add1_attr_by_NID(p8, NID_key_usage,
                                       V_ASN1_BIT_STRING, &us_val, 1);
}
