
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct nai_realm {struct nai_realm* realm; struct nai_realm* eap; } ;


 int os_free (struct nai_realm*) ;

__attribute__((used)) static void nai_realm_free(struct nai_realm *realms, u16 count)
{
 u16 i;

 if (realms == ((void*)0))
  return;
 for (i = 0; i < count; i++) {
  os_free(realms[i].eap);
  os_free(realms[i].realm);
 }
 os_free(realms);
}
