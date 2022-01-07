
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acl_type_t ;


 int __acl_delete_file (char const*,int ) ;
 int _acl_type_unold (int ) ;

int
acl_delete_file_np(const char *path_p, acl_type_t type)
{

 type = _acl_type_unold(type);
 return (__acl_delete_file(path_p, type));
}
