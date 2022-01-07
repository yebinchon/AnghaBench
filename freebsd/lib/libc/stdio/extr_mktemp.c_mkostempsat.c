
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ _gettemp (int,char*,int*,int ,int,int) ;

int
mkostempsat(int dfd, char *path, int slen, int oflags)
{
 int fd;

 return (_gettemp(dfd, path, &fd, 0, slen, oflags) ? fd : -1);
}
