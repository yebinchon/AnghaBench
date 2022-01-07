
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int buf ;


 int strtoull (char*,int *,int ) ;
 int sys_read_string (char const*,char const*,char*,int) ;

int sys_read_uint64(const char *dir_name, const char *file_name, uint64_t * u)
{
 char buf[32];
 int r;

 if ((r = sys_read_string(dir_name, file_name, buf, sizeof(buf))) < 0)
  return r;

 *u = strtoull(buf, ((void*)0), 0);

 return 0;
}
