
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int buf ;


 int EINVAL ;
 int ENOMEM ;
 int errno ;
 int inst_kernel ;
 int inst_loader_rc ;
 int inst_modules ;
 int inst_rootfs ;
 int read (int,char*,int) ;
 int setmultipath (int *,char*) ;
 int setpath (int *,char*) ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int
read_metatags(int fd)
{
 char buf[1024];
 char *p, *tag, *val;
 ssize_t fsize;
 int error;

 fsize = read(fd, buf, sizeof(buf));
 if (fsize == -1)
  return (errno);
 if (fsize == sizeof(buf))
  return (ENOMEM);

 buf[fsize] = '\0';
 error = 0;
 tag = buf;
 while (!error && *tag != '\0') {
  val = strchr(tag, '=');
  if (val == ((void*)0)) {
   error = EINVAL;
   break;
  }
  *val++ = '\0';
  p = strchr(val, '\n');
  if (p == ((void*)0)) {
   error = EINVAL;
   break;
  }
  *p++ = '\0';

  if (strcmp(tag, "KERNEL") == 0)
   error = setpath(&inst_kernel, val);
  else if (strcmp(tag, "MODULES") == 0)
   error = setmultipath(&inst_modules, val);
  else if (strcmp(tag, "ROOTFS") == 0)
   error = setpath(&inst_rootfs, val);
  else if (strcmp(tag, "LOADER_RC") == 0)
   error = setpath(&inst_loader_rc, val);

  tag = p;
 }

 return (error);
}
