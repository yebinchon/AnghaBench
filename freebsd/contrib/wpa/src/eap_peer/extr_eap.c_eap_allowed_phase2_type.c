
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EAP_TYPE_FAST ;
 int EAP_TYPE_PEAP ;
 int EAP_TYPE_TEAP ;
 int EAP_TYPE_TTLS ;
 int EAP_VENDOR_IETF ;

__attribute__((used)) static int eap_allowed_phase2_type(int vendor, int type)
{
 if (vendor != EAP_VENDOR_IETF)
  return 0;
 return type != EAP_TYPE_PEAP && type != EAP_TYPE_TTLS &&
  type != EAP_TYPE_FAST && type != EAP_TYPE_TEAP;
}
