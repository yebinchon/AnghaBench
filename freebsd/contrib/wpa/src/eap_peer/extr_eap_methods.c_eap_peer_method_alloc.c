
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_method {int version; int vendor; char const* name; int method; } ;
typedef int EapType ;


 struct eap_method* os_zalloc (int) ;

struct eap_method * eap_peer_method_alloc(int version, int vendor,
       EapType method, const char *name)
{
 struct eap_method *eap;
 eap = os_zalloc(sizeof(*eap));
 if (eap == ((void*)0))
  return ((void*)0);
 eap->version = version;
 eap->vendor = vendor;
 eap->method = method;
 eap->name = name;
 return eap;
}
