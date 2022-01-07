
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ asprintf (char**,char*,char const*,char const*) ;
 int free (char*) ;
 int sysctlbyname (char*,char*,size_t*,int *,int ) ;

int ibv_read_sysfs_file(const char *dir, const char *file,
   char *buf, size_t size)
{
 char *path, *s;
 int ret;
 size_t len;

 if (asprintf(&path, "%s/%s", dir, file) < 0)
  return -1;

 for (s = &path[0]; *s != '\0'; s++)
  if (*s == '/')
   *s = '.';

 len = size;
 ret = sysctlbyname(&path[1], buf, &len, ((void*)0), 0);
 free(path);

 if (ret == -1)
  return -1;

 if (len > 0 && buf[len - 1] == '\n')
  buf[--len] = '\0';

 return len;
}
