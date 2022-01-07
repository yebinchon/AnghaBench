
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TIOCMGET ;
 int TIOCM_CD ;
 int TIOCM_CTS ;
 int TIOCM_DSR ;
 int TIOCM_DTR ;
 int TIOCM_LE ;
 int TIOCM_RTS ;
 char* chan_name ;
 scalar_t__ ioctl (int,int ,int*) ;
 int perror (char*) ;
 int printf (char*,...) ;

__attribute__((used)) static void
print_modems (int fd, int need_header)
{
 int status;

 if (ioctl (fd, TIOCMGET, &status) < 0) {
  perror ("getting modem status");
  return;
 }
 if (need_header)
  printf ("Channel\tLE\tDTR\tDSR\tRTS\tCTS\tCD\n");
 printf ("%s\t%s\t%s\t%s\t%s\t%s\t%s\n", chan_name,
  status & TIOCM_LE ? "On" : "-",
  status & TIOCM_DTR ? "On" : "-",
  status & TIOCM_DSR ? "On" : "-",
  status & TIOCM_RTS ? "On" : "-",
  status & TIOCM_CTS ? "On" : "-",
  status & TIOCM_CD ? "On" : "-");
}
