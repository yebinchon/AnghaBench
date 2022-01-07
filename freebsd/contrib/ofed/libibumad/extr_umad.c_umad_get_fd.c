
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TRACE (char*,int) ;

int umad_get_fd(int fd)
{
 TRACE("fd %d", fd);
 return fd;
}
