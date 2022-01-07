
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int acl_type_t ;
typedef TYPE_1__* acl_t ;
struct TYPE_5__ {int ats_acl; scalar_t__ ats_cur_entry; } ;


 int EINVAL ;
 int ___acl_aclcheck_fd (int,int ,int *) ;
 int _acl_type_unold (int ) ;
 scalar_t__ _posix1e_acl (TYPE_1__*,int ) ;
 int _posix1e_acl_sort (TYPE_1__*) ;
 int errno ;

int
acl_valid_fd_np(int fd, acl_type_t type, acl_t acl)
{

 if (acl == ((void*)0)) {
  errno = EINVAL;
  return (-1);
 }
 type = _acl_type_unold(type);
 if (_posix1e_acl(acl, type))
  _posix1e_acl_sort(acl);

 acl->ats_cur_entry = 0;

 return (___acl_aclcheck_fd(fd, type, &acl->ats_acl));
}
