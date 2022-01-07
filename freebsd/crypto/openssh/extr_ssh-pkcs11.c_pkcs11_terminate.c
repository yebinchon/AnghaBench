
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pkcs11_provider {int dummy; } ;


 struct pkcs11_provider* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct pkcs11_provider*,int ) ;
 int next ;
 int pkcs11_provider_finalize (struct pkcs11_provider*) ;
 int pkcs11_provider_unref (struct pkcs11_provider*) ;
 int pkcs11_providers ;

void
pkcs11_terminate(void)
{
 struct pkcs11_provider *p;

 while ((p = TAILQ_FIRST(&pkcs11_providers)) != ((void*)0)) {
  TAILQ_REMOVE(&pkcs11_providers, p, next);
  pkcs11_provider_finalize(p);
  pkcs11_provider_unref(p);
 }
}
