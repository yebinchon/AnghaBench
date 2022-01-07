
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rsn_pmksa_cache {TYPE_1__* pmksa; } ;
struct os_reltime {int sec; } ;
struct TYPE_2__ {int expiration; } ;


 int eloop_cancel_timeout (int ,struct rsn_pmksa_cache*,int *) ;
 int eloop_register_timeout (int,int ,int ,struct rsn_pmksa_cache*,int *) ;
 int os_get_reltime (struct os_reltime*) ;
 int pmksa_cache_expire ;

__attribute__((used)) static void pmksa_cache_set_expiration(struct rsn_pmksa_cache *pmksa)
{
 int sec;
 struct os_reltime now;

 eloop_cancel_timeout(pmksa_cache_expire, pmksa, ((void*)0));
 if (pmksa->pmksa == ((void*)0))
  return;
 os_get_reltime(&now);
 sec = pmksa->pmksa->expiration - now.sec;
 if (sec < 0)
  sec = 0;
 eloop_register_timeout(sec + 1, 0, pmksa_cache_expire, pmksa, ((void*)0));
}
