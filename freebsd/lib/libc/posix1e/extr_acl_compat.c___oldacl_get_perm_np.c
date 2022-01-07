
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int oldacl_perm_t ;
typedef int acl_permset_t ;


 int acl_get_perm_np (int ,int ) ;

int
__oldacl_get_perm_np(acl_permset_t permset_d, oldacl_perm_t perm)
{

 return (acl_get_perm_np(permset_d, perm));
}
