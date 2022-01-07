
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int acl_type_t ;
typedef TYPE_1__* acl_t ;
struct TYPE_5__ {int ats_acl; } ;


 int EINVAL ;
 int __acl_aclcheck_link (char const*,int ,int *) ;
 int _acl_type_unold (int ) ;
 scalar_t__ _posix1e_acl (TYPE_1__*,int ) ;
 int _posix1e_acl_sort (TYPE_1__*) ;
 int errno ;

int
acl_valid_link_np(const char *pathp, acl_type_t type, acl_t acl)
{

 if (pathp == ((void*)0) || acl == ((void*)0)) {
  errno = EINVAL;
  return (-1);
 }
 type = _acl_type_unold(type);
 if (_posix1e_acl(acl, type))
  _posix1e_acl_sort(acl);

 return (__acl_aclcheck_link(pathp, type, &acl->ats_acl));
}
