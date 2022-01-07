
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 unsigned int strtoul (char*,int *,int ) ;
 int sys_read_string (char const*,char const*,char*,int) ;

int sys_read_uint(const char *dir_name, const char *file_name, unsigned *u)
{
 char buf[32];
 int r;

 if ((r = sys_read_string(dir_name, file_name, buf, sizeof(buf))) < 0)
  return r;

 *u = strtoul(buf, ((void*)0), 0);

 return 0;
}
