
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef enum acl_type { ____Placeholder_acl_type } acl_type ;
typedef int aclent_t ;
struct TYPE_4__ {int acl_type; int acl_entry_size; scalar_t__ acl_cnt; int * acl_aclp; } ;
typedef TYPE_1__ acl_t ;
typedef int ace_t ;




 int acl_free (TYPE_1__*) ;
 scalar_t__ cacl_malloc (void**,int) ;

acl_t *
acl_alloc(enum acl_type type)
{
 acl_t *aclp;

 if (cacl_malloc((void **)&aclp, sizeof (acl_t)) != 0)
  return (((void*)0));

 aclp->acl_aclp = ((void*)0);
 aclp->acl_cnt = 0;

 switch (type) {
 case 129:
  aclp->acl_type = 129;
  aclp->acl_entry_size = sizeof (ace_t);
  break;
 case 128:
  aclp->acl_type = 128;
  aclp->acl_entry_size = sizeof (aclent_t);
  break;
 default:
  acl_free(aclp);
  aclp = ((void*)0);
 }
 return (aclp);
}
