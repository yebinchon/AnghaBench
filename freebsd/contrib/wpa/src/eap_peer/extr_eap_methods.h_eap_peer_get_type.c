
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EapType ;


 int EAP_TYPE_NONE ;
 int EAP_VENDOR_IETF ;

__attribute__((used)) static inline EapType eap_peer_get_type(const char *name, int *vendor)
{
 *vendor = EAP_VENDOR_IETF;
 return EAP_TYPE_NONE;
}
