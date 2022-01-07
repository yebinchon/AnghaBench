
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int acl_type_t ;
typedef TYPE_1__* acl_t ;
struct TYPE_6__ {int ats_acl; scalar_t__ ats_cur_entry; } ;


 int EINVAL ;
 int __acl_set_link (char const*,int ,int *) ;
 scalar_t__ _acl_type_not_valid_for_acl (TYPE_1__*,int ) ;
 int _acl_type_unold (int ) ;
 scalar_t__ _posix1e_acl (TYPE_1__*,int ) ;
 int _posix1e_acl_sort (TYPE_1__*) ;
 int errno ;

int
acl_set_link_np(const char *path_p, acl_type_t type, acl_t acl)
{

 if (acl == ((void*)0) || path_p == ((void*)0)) {
  errno = EINVAL;
  return (-1);
 }
 type = _acl_type_unold(type);
 if (_acl_type_not_valid_for_acl(acl, type)) {
  errno = EINVAL;
  return (-1);
 }
 if (_posix1e_acl(acl, type))
  _posix1e_acl_sort(acl);

 acl->ats_cur_entry = 0;

 return (__acl_set_link(path_p, type, &acl->ats_acl));
}
