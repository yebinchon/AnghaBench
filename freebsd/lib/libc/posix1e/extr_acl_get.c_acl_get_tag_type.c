
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int acl_tag_t ;
typedef TYPE_1__* acl_entry_t ;
struct TYPE_3__ {int ae_tag; } ;


 int EINVAL ;
 int errno ;

int
acl_get_tag_type(acl_entry_t entry_d, acl_tag_t *tag_type_p)
{

 if (entry_d == ((void*)0) || tag_type_p == ((void*)0)) {
  errno = EINVAL;
  return (-1);
 }

 *tag_type_p = entry_d->ae_tag;

 return (0);
}
