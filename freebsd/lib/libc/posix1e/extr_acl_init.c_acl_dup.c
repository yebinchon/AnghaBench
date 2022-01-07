
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* acl_t ;
struct TYPE_5__ {scalar_t__ ats_cur_entry; } ;


 int ACL_MAX_ENTRIES ;
 TYPE_1__* acl_init (int ) ;

acl_t
acl_dup(acl_t acl)
{
 acl_t acl_new;

 acl_new = acl_init(ACL_MAX_ENTRIES);
 if (acl_new != ((void*)0)) {
  *acl_new = *acl;
  acl->ats_cur_entry = 0;
  acl_new->ats_cur_entry = 0;
 }

 return (acl_new);
}
