
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close (int) ;
 int fd ;

__attribute__((used)) static void closedevice()
{
 close(fd);
 fd = -1;
}
