
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ encioc_enc_status_t ;
typedef int caddr_t ;


 int ENCIOC_SETENCSTAT ;
 int O_RDWR ;
 int close (int) ;
 int fprintf (int ,char*,char*) ;
 scalar_t__ ioctl (int,int ,int ) ;
 int open (char*,int ) ;
 int perror (char*) ;
 int stderr ;
 long strtol (char*,int *,int ) ;

int
main(int a, char **v)
{
 int fd;
 long val;
 encioc_enc_status_t stat;

 if (a != 3) {
  fprintf(stderr, "usage: %s device enclosure_status\n", *v);
  return (1);
 }
 fd = open(v[1], O_RDWR);
 if (fd < 0) {
  perror(v[1]);
  return (1);
 }

 val = strtol(v[2], ((void*)0), 0);
 stat = (encioc_enc_status_t)val;
 if (ioctl(fd, ENCIOC_SETENCSTAT, (caddr_t) &stat) < 0) {
  perror("ENCIOC_SETENCSTAT");
 }
 (void) close(fd);
 return (0);
}
