
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TRACE (char*,int,int) ;
 int dev_poll (int,int) ;

int umad_poll(int fd, int timeout_ms)
{
 TRACE("fd %d timeout %u", fd, timeout_ms);
 return dev_poll(fd, timeout_ms);
}
