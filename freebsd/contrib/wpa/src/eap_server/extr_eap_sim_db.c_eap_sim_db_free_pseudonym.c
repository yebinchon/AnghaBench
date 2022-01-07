
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sim_pseudonym {struct eap_sim_pseudonym* pseudonym; struct eap_sim_pseudonym* permanent; } ;


 int os_free (struct eap_sim_pseudonym*) ;

__attribute__((used)) static void eap_sim_db_free_pseudonym(struct eap_sim_pseudonym *p)
{
 os_free(p->permanent);
 os_free(p->pseudonym);
 os_free(p);
}
