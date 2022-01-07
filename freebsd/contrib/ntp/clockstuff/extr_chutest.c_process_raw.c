
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct timezone {int dummy; } ;
struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;


 scalar_t__ dofilter ;
 int error (char*,char*,char*) ;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 int gettimeofday (struct timeval*,struct timezone*) ;
 struct timeval lasttv ;
 int printf (char*,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 char* progname ;
 int raw_filter (unsigned int,struct timeval*) ;
 int read (int,int*,int) ;
 int stderr ;

int
process_raw(
 int s
 )
{
 u_char c;
 int n;
 struct timeval tv;
 struct timeval difftv;

 while ((n = read(s, &c, sizeof(char))) > 0) {
  (void) gettimeofday(&tv, (struct timezone *)0);
  if (dofilter)
      raw_filter((unsigned int)c, &tv);
  else {
   difftv.tv_sec = tv.tv_sec - lasttv.tv_sec;
   difftv.tv_usec = tv.tv_usec - lasttv.tv_usec;
   if (difftv.tv_usec < 0) {
    difftv.tv_sec--;
    difftv.tv_usec += 1000000;
   }
   (void) printf("%02x\t%lu.%06lu\t%lu.%06lu\n",
          c, tv.tv_sec, tv.tv_usec, difftv.tv_sec,
          difftv.tv_usec);
   lasttv = tv;
  }
 }

 if (n == 0) {
  (void) fprintf(stderr, "%s: zero returned on read\n", progname);
  exit(1);
 } else
     error("read()", "", "");
}
