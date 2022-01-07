
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pam_chain_t ;


 int PAM_NUM_FACILITIES ;
 int openpam_destroy_chain (int *) ;

void
openpam_clear_chains(pam_chain_t *policy[])
{
 int i;

 for (i = 0; i < PAM_NUM_FACILITIES; ++i) {
  openpam_destroy_chain(policy[i]);
  policy[i] = ((void*)0);
 }
}
