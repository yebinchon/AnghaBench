
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {long elm_idx; long* cstat; } ;
typedef TYPE_1__ encioc_elm_status_t ;
typedef int caddr_t ;


 int ENCIOC_SETELMSTAT ;
 int O_RDWR ;
 int close (int) ;
 int fprintf (int ,char*,char*) ;
 scalar_t__ ioctl (int,int ,int ) ;
 int open (char*,int ) ;
 int perror (char*) ;
 int stderr ;
 long strtol (char*,char**,int ) ;

int
main(int a, char **v)
{
 int fd;
 int i;
 encioc_elm_status_t obj;
 long cvt;
 char *x;

 if (a != 7) {
usage:
  fprintf(stderr,
      "usage: %s device objectid stat0 stat1 stat2 stat3\n", *v);
  return (1);
 }
 fd = open(v[1], O_RDWR);
 if (fd < 0) {
  perror(v[1]);
  return (1);
 }
 x = v[2];
 cvt = strtol(v[2], &x, 0);
 if (x == v[2]) {
  goto usage;
 }
 obj.elm_idx = cvt;
 for (i = 0; i < 4; i++) {
  x = v[3 + i];
  cvt = strtol(v[3 + i], &x, 0);
  if (x == v[3 + i]) {
   goto usage;
  }
  obj.cstat[i] = cvt;
 }
 if (ioctl(fd, ENCIOC_SETELMSTAT, (caddr_t) &obj) < 0) {
  perror("ENCIOC_SETELMSTAT");
 }
 (void) close(fd);
 return (0);
}
