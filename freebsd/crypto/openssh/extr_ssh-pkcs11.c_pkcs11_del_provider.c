
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pkcs11_provider {int dummy; } ;


 int TAILQ_REMOVE (int *,struct pkcs11_provider*,int ) ;
 int next ;
 int pkcs11_provider_finalize (struct pkcs11_provider*) ;
 struct pkcs11_provider* pkcs11_provider_lookup (char*) ;
 int pkcs11_provider_unref (struct pkcs11_provider*) ;
 int pkcs11_providers ;

int
pkcs11_del_provider(char *provider_id)
{
 struct pkcs11_provider *p;

 if ((p = pkcs11_provider_lookup(provider_id)) != ((void*)0)) {
  TAILQ_REMOVE(&pkcs11_providers, p, next);
  pkcs11_provider_finalize(p);
  pkcs11_provider_unref(p);
  return (0);
 }
 return (-1);
}
