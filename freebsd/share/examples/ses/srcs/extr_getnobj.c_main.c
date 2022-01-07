
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int caddr_t ;


 int O_RDONLY ;
 int SESIOC_GETNOBJ ;
 int close (int) ;
 int fprintf (int ,char*,char*,unsigned int) ;
 scalar_t__ ioctl (int,int ,int ) ;
 int open (char*,int ) ;
 int perror (char*) ;
 int stdout ;

int
main(int argc, char **argv)
{
 unsigned int nobj;
 int fd;

 while (*++argv != ((void*)0)) {
  char *name = *argv;
  fd = open(name, O_RDONLY);
  if (fd < 0) {
   perror(name);
   continue;
  }
  if (ioctl(fd, SESIOC_GETNOBJ, (caddr_t) &nobj) < 0) {
   perror("SESIOC_GETNOBJ");
  } else {
   fprintf(stdout, "%s: %d objects\n", name, nobj);
  }
  close (fd);
 }
 return (0);
}
