
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* MDXFdChunk (int,char*,int ,int ) ;

char *
MDXFd(int fd, char *buf)
{
 return MDXFdChunk(fd, buf, 0, 0);
}
