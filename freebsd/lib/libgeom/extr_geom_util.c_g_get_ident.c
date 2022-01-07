
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DIOCGIDENT ;
 int DISK_IDENT_SIZE ;
 int ENAMETOOLONG ;
 int ENOENT ;
 int errno ;
 int g_ioctl_arg (int,int ,char*) ;
 size_t strlcpy (char*,char*,size_t) ;

int
g_get_ident(int fd, char *ident, size_t size)
{
 char lident[DISK_IDENT_SIZE];

 if (g_ioctl_arg(fd, DIOCGIDENT, lident) == -1)
  return (-1);
 if (lident[0] == '\0') {
  errno = ENOENT;
  return (-1);
 }
 if (strlcpy(ident, lident, size) >= size) {
  errno = ENAMETOOLONG;
  return (-1);
 }
 return (0);
}
