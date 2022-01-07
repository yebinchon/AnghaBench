
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AT_FDCWD ;
 scalar_t__ _gettemp (int ,char*,int*,int ,int ,int ) ;

int
mkstemp(char *path)
{
 int fd;

 return (_gettemp(AT_FDCWD, path, &fd, 0, 0, 0) ? fd : -1);
}
