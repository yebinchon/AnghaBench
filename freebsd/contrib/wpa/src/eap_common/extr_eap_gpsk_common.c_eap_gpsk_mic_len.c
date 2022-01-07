
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EAP_GPSK_VENDOR_IETF ;

size_t eap_gpsk_mic_len(int vendor, int specifier)
{
 if (vendor != EAP_GPSK_VENDOR_IETF)
  return 0;

 switch (specifier) {
 case 129:
  return 16;




 default:
  return 0;
 }
}
