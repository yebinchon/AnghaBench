
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int acl_cnt; int acl_entry_size; struct TYPE_4__* acl_aclp; } ;
typedef TYPE_1__ acl_t ;


 int cacl_free (TYPE_1__*,int) ;

void
acl_free(acl_t *aclp)
{
 int acl_size;

 if (aclp == ((void*)0))
  return;

 if (aclp->acl_aclp) {
  acl_size = aclp->acl_cnt * aclp->acl_entry_size;
  cacl_free(aclp->acl_aclp, acl_size);
 }

 cacl_free(aclp, sizeof (acl_t));
}
