
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dir_name ;


 char* SYS_INFINIBAND ;
 int SYS_NODE_TYPE ;
 int snprintf (char*,int,char*,char*,char const*) ;
 scalar_t__ sys_read_uint (char*,int ,unsigned int*) ;

__attribute__((used)) static unsigned is_ib_type(const char *ca_name)
{
 char dir_name[256];
 unsigned type;

 snprintf(dir_name, sizeof(dir_name), "%s/%s", SYS_INFINIBAND, ca_name);

 if (sys_read_uint(dir_name, SYS_NODE_TYPE, &type) < 0)
  return 0;

 return type >= 1 && type <= 3 ? 1 : 0;
}
