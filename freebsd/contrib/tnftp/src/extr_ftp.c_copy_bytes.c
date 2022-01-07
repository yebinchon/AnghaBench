
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {scalar_t__ tv_sec; scalar_t__ tv_usec; } ;
typedef int volatile ssize_t ;
typedef int volatile off_t ;


 int MIN (int volatile,int volatile) ;
 int volatile bytes ;
 int errno ;
 int fflush (int ) ;
 int gettimeofday (struct timeval*,int *) ;
 int putc (char,int ) ;
 int read (int,char*,int ) ;
 int timersub (struct timeval*,struct timeval*,struct timeval*) ;
 int ttyout ;
 int usleep (scalar_t__) ;
 int write (int,char*,int volatile) ;

__attribute__((used)) static int
copy_bytes(int infd, int outfd, char *buf, size_t bufsize,
 int rate_limit, int hash_interval)
{
 volatile off_t hashc;
 ssize_t inc, outc;
 char *bufp;
 struct timeval tvthen, tvnow, tvdiff;
 off_t bufrem, bufchunk;
 int serr;

 hashc = hash_interval;
 if (rate_limit)
  bufchunk = rate_limit;
 else
  bufchunk = bufsize;

 while (1) {
  if (rate_limit) {
   (void)gettimeofday(&tvthen, ((void*)0));
  }
  errno = 0;
  inc = outc = 0;

  bufrem = bufchunk;
  while (bufrem > 0) {
   inc = read(infd, buf, MIN((off_t)bufsize, bufrem));
   if (inc <= 0)
    goto copy_done;
   bytes += inc;
   bufrem -= inc;
   bufp = buf;
   while (inc > 0) {
    outc = write(outfd, bufp, inc);
    if (outc < 0)
     goto copy_done;
    inc -= outc;
    bufp += outc;
   }
   if (hash_interval) {
    while (bytes >= hashc) {
     (void)putc('#', ttyout);
     hashc += hash_interval;
    }
    (void)fflush(ttyout);
   }
  }
  if (rate_limit) {
   while (1) {
    (void)gettimeofday(&tvnow, ((void*)0));
    timersub(&tvnow, &tvthen, &tvdiff);
    if (tvdiff.tv_sec > 0)
     break;
    usleep(1000000 - tvdiff.tv_usec);
   }
  }
 }

 copy_done:
 serr = errno;
 if (hash_interval && bytes > 0) {
  if (bytes < hash_interval)
   (void)putc('#', ttyout);
  (void)putc('\n', ttyout);
  (void)fflush(ttyout);
 }
 errno = serr;
 if (inc == -1)
  return 1;
 if (outc == -1)
  return 2;

 return 0;
}
