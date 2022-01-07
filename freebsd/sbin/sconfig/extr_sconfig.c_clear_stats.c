
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SERIAL_CLRSTAT ;
 int exit (int) ;
 scalar_t__ ioctl (int,int ,int ) ;
 int perror (char*) ;

__attribute__((used)) static void
clear_stats (int fd)
{
 if (ioctl (fd, SERIAL_CLRSTAT, 0) < 0) {
  perror ("clearing statistics");
  exit (-1);
 }
}
