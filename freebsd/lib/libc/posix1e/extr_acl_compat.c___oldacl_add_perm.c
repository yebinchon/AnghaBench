
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int oldacl_perm_t ;
typedef int acl_permset_t ;


 int acl_add_perm (int ,int ) ;

int
__oldacl_add_perm(acl_permset_t permset_d, oldacl_perm_t perm)
{

 return (acl_add_perm(permset_d, perm));
}
