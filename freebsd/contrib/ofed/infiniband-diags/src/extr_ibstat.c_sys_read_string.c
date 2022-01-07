
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int path ;


 int ret_code () ;
 int snprintf (char*,int,char*,char const*,char const*) ;
 char* strrchr (char*,char) ;
 int sysctlbyname (char*,char*,size_t*,int *,int ) ;

int sys_read_string(const char *dir_name, const char *file_name, char *str, int max_len)
{
 char path[256], *s;
 size_t len;

 snprintf(path, sizeof(path), "%s/%s", dir_name, file_name);

 for (s = &path[0]; *s != '\0'; s++)
  if (*s == '/')
   *s = '.';

 len = max_len;
 if (sysctlbyname(&path[1], str, &len, ((void*)0), 0) == -1)
  return ret_code();

 str[(len < max_len) ? len : max_len - 1] = 0;

 if ((s = strrchr(str, '\n')))
  *s = 0;

 return 0;
}
