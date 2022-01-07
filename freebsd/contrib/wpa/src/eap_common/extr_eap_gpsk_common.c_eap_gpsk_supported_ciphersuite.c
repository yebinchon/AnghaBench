
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EAP_GPSK_CIPHER_AES ;
 int EAP_GPSK_CIPHER_SHA256 ;
 int EAP_GPSK_VENDOR_IETF ;

int eap_gpsk_supported_ciphersuite(int vendor, int specifier)
{
 if (vendor == EAP_GPSK_VENDOR_IETF &&
     specifier == EAP_GPSK_CIPHER_AES)
  return 1;





 return 0;
}
