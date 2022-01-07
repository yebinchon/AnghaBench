
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int fal_cipher_suite_e ;


 scalar_t__ CS_ID_GCM_AES_128 ;
 scalar_t__ CS_ID_GCM_AES_256 ;
 int FAL_CIPHER_SUITE_AES_GCM_128 ;
 int FAL_CIPHER_SUITE_AES_GCM_256 ;
 int FAL_CIPHER_SUITE_MAX ;

__attribute__((used)) static fal_cipher_suite_e macsec_qca_cs_type_get(u64 cs)
{
 if (cs == CS_ID_GCM_AES_128)
  return FAL_CIPHER_SUITE_AES_GCM_128;
 if (cs == CS_ID_GCM_AES_256)
  return FAL_CIPHER_SUITE_AES_GCM_256;
 return FAL_CIPHER_SUITE_MAX;
}
