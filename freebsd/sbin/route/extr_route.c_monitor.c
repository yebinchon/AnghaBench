
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct rt_msghdr {int dummy; } ;


 int EINVAL ;
 int EX_USAGE ;

 char* ctime (int *) ;
 scalar_t__ debugonly ;
 int defaultfib ;
 int errno ;
 int errx (int ,char*,...) ;
 int exit (int ) ;
 int interfaces () ;
 int keyword (char*) ;
 int numfibs ;
 int print_rtmsg (struct rt_msghdr*,int) ;
 int printf (char*,int,char*) ;
 int read (int ,char*,int) ;
 int s ;
 int set_sofib (int) ;
 int strtol (char*,char**,int ) ;
 int time (int *) ;
 int usage (char*) ;
 int verbose ;

__attribute__((used)) static void
monitor(int argc, char *argv[])
{
 int n, fib, error;
 char msg[2048], *endptr;

 fib = defaultfib;
 while (argc > 1) {
  argc--;
  argv++;
  if (**argv != '-')
   usage(*argv);
  switch (keyword(*argv + 1)) {
  case 128:
   if (!--argc)
    usage(*argv);
   errno = 0;
   fib = strtol(*++argv, &endptr, 0);
   if (errno == 0) {
    if (*endptr != '\0' ||
        fib < 0 ||
        (numfibs != -1 && fib > numfibs - 1))
     errno = EINVAL;
   }
   if (errno)
    errx(EX_USAGE, "invalid fib number: %s", *argv);
   break;
  default:
   usage(*argv);
  }
 }
 error = set_sofib(fib);
 if (error)
  errx(EX_USAGE, "invalid fib number: %d", fib);

 verbose = 1;
 if (debugonly) {
  interfaces();
  exit(0);
 }
 for (;;) {
  time_t now;
  n = read(s, msg, 2048);
  now = time(((void*)0));
  (void)printf("\ngot message of size %d on %s", n, ctime(&now));
  print_rtmsg((struct rt_msghdr *)(void *)msg, n);
 }
}
