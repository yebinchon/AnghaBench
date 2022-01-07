
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acl_type_t ;


 int ___acl_delete_fd (int,int ) ;
 int _acl_type_unold (int ) ;

int
acl_delete_fd_np(int filedes, acl_type_t type)
{

 type = _acl_type_unold(type);
 return (___acl_delete_fd(filedes, type));
}
