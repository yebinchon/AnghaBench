
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {long obj_id; int* cstat; } ;
typedef TYPE_1__ ses_objstat ;
typedef int caddr_t ;


 int O_RDONLY ;
 int SESIOC_GETOBJSTAT ;
 int close (int) ;
 int fprintf (int ,char*,...) ;
 scalar_t__ ioctl (int,int ,int ) ;
 int open (char*,int ) ;
 int perror (char*) ;
 int stderr ;
 int stdout ;
 long strtol (char*,char**,int ) ;

int
main(int a, char **v)
{
 int fd;
 int i;
 ses_objstat obj;
 long cvt;
 char *x;

 if (a != 3) {
usage:
  fprintf(stderr, "usage: %s device objectid\n", *v);
  return (1);
 }
 fd = open(v[1], O_RDONLY);
 if (fd < 0) {
  perror(v[1]);
  return (1);
 }
 x = v[2];
 cvt = strtol(v[2], &x, 0);
 if (x == v[2]) {
  goto usage;
 }
 obj.obj_id = cvt;
 if (ioctl(fd, SESIOC_GETOBJSTAT, (caddr_t) &obj) < 0) {
  perror("SESIOC_GETOBJSTAT");
  return (1);
 }
 fprintf(stdout, "Object 0x%x: 0x%x 0x%x 0x%x 0x%x\n", obj.obj_id,
     obj.cstat[0], obj.cstat[1], obj.cstat[2], obj.cstat[3]);
 (void) close(fd);
 return (0);
}
