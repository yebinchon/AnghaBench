
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEBUG (char*,int) ;
 int close (int) ;

int umad_close_port(int fd)
{
 close(fd);
 DEBUG("closed fd %d", fd);
 return 0;
}
