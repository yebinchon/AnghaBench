
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uid_t ;
typedef TYPE_1__* acl_entry_t ;
struct TYPE_3__ {int ae_tag; int ae_id; } ;




 int EINVAL ;
 int errno ;

int
acl_set_qualifier(acl_entry_t entry_d, const void *tag_qualifier_p)
{

 if (!entry_d || !tag_qualifier_p) {
  errno = EINVAL;
  return (-1);
 }
 switch(entry_d->ae_tag) {
 case 128:
 case 129:
  entry_d->ae_id = *(uid_t *)tag_qualifier_p;
  break;
 default:
  errno = EINVAL;
  return (-1);
 }

 return (0);
}
