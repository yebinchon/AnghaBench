
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_6__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int acl_type_t ;
typedef TYPE_1__* acl_t ;
struct TYPE_8__ {int acl_maxcnt; } ;
struct TYPE_7__ {TYPE_6__ ats_acl; } ;


 int ACL_MAX_ENTRIES ;
 int ___acl_get_fd (int,int ,TYPE_6__*) ;
 int _acl_brand_from_type (TYPE_1__*,int ) ;
 int _acl_type_unold (int ) ;
 int acl_free (TYPE_1__*) ;
 TYPE_1__* acl_init (int ) ;

acl_t
acl_get_fd_np(int fd, acl_type_t type)
{
 acl_t aclp;
 int error;

 aclp = acl_init(ACL_MAX_ENTRIES);
 if (aclp == ((void*)0))
  return (((void*)0));

 type = _acl_type_unold(type);
 error = ___acl_get_fd(fd, type, &aclp->ats_acl);
 if (error) {
  acl_free(aclp);
  return (((void*)0));
 }

 aclp->ats_acl.acl_maxcnt = ACL_MAX_ENTRIES;
 _acl_brand_from_type(aclp, type);

 return (aclp);
}
