
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sim_reauth {struct eap_sim_reauth* reauth_id; struct eap_sim_reauth* permanent; } ;


 int os_free (struct eap_sim_reauth*) ;

__attribute__((used)) static void eap_sim_db_free_reauth(struct eap_sim_reauth *r)
{
 os_free(r->permanent);
 os_free(r->reauth_id);
 os_free(r);
}
