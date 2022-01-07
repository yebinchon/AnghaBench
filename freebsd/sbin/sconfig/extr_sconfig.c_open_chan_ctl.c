
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ENODEV ;
 int SERIAL_GETNAME ;
 int adapter_type ;
 char* chan_name ;
 scalar_t__ errno ;
 int exit (int) ;
 int fprintf (int ,char*,int) ;
 scalar_t__ ioctl (int,int ,char**) ;
 int open (char*,int ) ;
 int perror (char*) ;
 int sprintf (char*,char*,int) ;
 int stderr ;

__attribute__((used)) static int
open_chan_ctl (int num)
{
 char device [80];
 int fd;


 sprintf (device, "/dev/serial/ctl%d", num);
 fd = open (device, 0);
 if (fd < 0) {
  if (errno == ENODEV)
   fprintf (stderr, "chan%d: not configured\n", num);
  else
   perror (device);
  exit (-1);
 }

 if (ioctl (fd, SERIAL_GETNAME, &chan_name) < 0)
  sprintf (chan_name, "chan%d", num);
 return fd;
}
