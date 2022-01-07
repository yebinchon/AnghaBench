
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DIOCGPROVIDERNAME ;
 int MAXPATHLEN ;
 int g_ioctl_arg (int,int ,char*) ;
 char* strdup (char*) ;

char *
g_providername(int fd)
{
 char name[MAXPATHLEN];

 if (g_ioctl_arg(fd, DIOCGPROVIDERNAME, name) == -1)
  return (((void*)0));
 return (strdup(name));
}
