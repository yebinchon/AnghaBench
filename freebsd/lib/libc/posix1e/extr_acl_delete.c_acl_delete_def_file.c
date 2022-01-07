
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ACL_TYPE_DEFAULT ;
 int __acl_delete_file (char const*,int ) ;

int
acl_delete_def_file(const char *path_p)
{

 return (__acl_delete_file(path_p, ACL_TYPE_DEFAULT));
}
