
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EACCES ;
 scalar_t__ ENXIO ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int O_RDWR ;
 int close (int) ;
 scalar_t__ errno ;
 int open (char*,int ) ;
 int printf (char*) ;

int
main(void)
{
 int exitcode, fd;

 fd = open("/dev/puffs", O_RDWR);
 if (fd != -1) {
  printf("yes\n");
  close(fd);
  exitcode = EXIT_SUCCESS;
 } else {
  if (errno == ENXIO) {
   printf("enxio\n");
   exitcode = EXIT_SUCCESS;
  } else if (errno == EACCES) {
   printf("eacces\n");
   exitcode = EXIT_SUCCESS;
  } else {
   printf("failed\n");
   exitcode = EXIT_FAILURE;
  }
 }

 return exitcode;
}
