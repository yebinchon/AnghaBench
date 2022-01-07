
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int * acl_permset_t ;
typedef TYPE_1__* acl_entry_t ;
struct TYPE_3__ {int ae_perm; } ;


 int EINVAL ;
 int errno ;

int
acl_get_permset(acl_entry_t entry_d, acl_permset_t *permset_p)
{

 if (entry_d == ((void*)0) || permset_p == ((void*)0)) {
  errno = EINVAL;
  return (-1);
 }

 *permset_p = &entry_d->ae_perm;

 return (0);
}
