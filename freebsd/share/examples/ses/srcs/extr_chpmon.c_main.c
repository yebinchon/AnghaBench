
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ses_encstat ;
typedef int caddr_t ;


 int BADSTAT ;
 int O_RDWR ;
 int SESIOC_GETENCSTAT ;
 int SESIOC_SETENCSTAT ;
 int SES_ENCSTAT_CRITICAL ;
 int SES_ENCSTAT_NONCRITICAL ;
 int SES_ENCSTAT_UNRECOV ;
 int atoi (char*) ;
 int bzero (void*,int) ;
 int close (int) ;
 int errno ;
 int fprintf (int ,char*,...) ;
 scalar_t__ ioctl (int,int ,int ) ;
 int* malloc (int) ;
 int open (char*,int ) ;
 int perror (char*) ;
 int putchar (char) ;
 int sleep (int) ;
 int stderr ;
 int stdout ;
 char* strerror (int ) ;

int
main(int a, char **v)
{
 int fd, delay, dev;
 ses_encstat stat, *carray;

 if (a < 3) {
  fprintf(stderr, "usage: %s polling-interval device "
      "[ device ... ]\n", *v);
  return (1);
 }
 delay = atoi(v[1]);
 carray = malloc(a);
 if (carray == ((void*)0)) {
  perror("malloc");
  return (1);
 }
 bzero((void *)carray, a);

 for (;;) {
  for (dev = 2; dev < a; dev++) {
   fd = open(v[dev], O_RDWR);
   if (fd < 0) {
    perror(v[dev]);
    continue;
   }




   stat = 0;
   if (ioctl(fd, SESIOC_SETENCSTAT, (caddr_t) &stat) < 0) {
    fprintf(stderr, "%s: SESIOC_SETENCSTAT1: %s\n",
        v[dev], strerror(errno));
    (void) close(fd);
    continue;
   }



   if (ioctl(fd, SESIOC_GETENCSTAT, (caddr_t) &stat) < 0) {
    fprintf(stderr, "%s: SESIOC_GETENCSTAT: %s\n",
        v[dev], strerror(errno));
    (void) close(fd);
    continue;
   }

   if ((stat & BADSTAT) == 0) {
    if (carray[dev]) {
     fprintf(stdout, "%s: Clearing CRITICAL "
         "condition\n", v[dev]);
     carray[dev] = 0;
    }
    (void) close(fd);
    continue;
   }
   carray[dev] = 1;
   fprintf(stdout, "%s: Setting CRITICAL from:", v[dev]);
   if (stat & SES_ENCSTAT_UNRECOV)
    fprintf(stdout, " UNRECOVERABLE");

   if (stat & SES_ENCSTAT_CRITICAL)
    fprintf(stdout, " CRITICAL");

   if (stat & SES_ENCSTAT_NONCRITICAL)
    fprintf(stdout, " NONCRITICAL");
   putchar('\n');
   stat = SES_ENCSTAT_CRITICAL;
   if (ioctl(fd, SESIOC_SETENCSTAT, (caddr_t) &stat) < 0) {
    fprintf(stderr, "%s: SESIOC_SETENCSTAT 2: %s\n",
        v[dev], strerror(errno));
   }
   (void) close(fd);
  }
  sleep(delay);
 }

}
