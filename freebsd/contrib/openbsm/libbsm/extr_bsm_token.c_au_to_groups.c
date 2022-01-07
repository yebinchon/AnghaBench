
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int token_t ;
typedef int gid_t ;


 int AUDIT_MAX_GROUPS ;
 int * au_to_newgroups (int ,int *) ;

token_t *
au_to_groups(int *groups)
{

 return (au_to_newgroups(AUDIT_MAX_GROUPS, (gid_t *)groups));
}
