
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SERIAL_GETREGISTERED ;
 int close (int) ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 scalar_t__ ioctl (int,int ,int ****) ;
 int **** mask ;
 int open (char*,int ) ;
 int perror (char*) ;
 int sprintf (char*,char*,int) ;
 int stderr ;

__attribute__((used)) static void
get_mask (void)
{

 int fd;

 fd = open ("/dev/serial/ctl0", 0);
 if (fd < 0) {
  perror ("/dev/serial/ctl0");
  exit (-1);
 }
 if (ioctl (fd, SERIAL_GETREGISTERED, &mask) < 0) {
  perror ("getting list of channels");
  exit (-1);
 }
 close (fd);
}
