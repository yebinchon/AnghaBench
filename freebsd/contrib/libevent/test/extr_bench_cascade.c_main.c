
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {long tv_sec; int tv_usec; } ;
struct rlimit {int rlim_cur; int rlim_max; } ;
typedef int WSADATA ;


 int RLIMIT_NOFILE ;
 int WSACleanup () ;
 int WSAStartup (int,int *) ;
 int atoi (int ) ;
 int event_init () ;
 int exit (int) ;
 int fprintf (int ,char*,int) ;
 int getopt (int,char**,char*) ;
 int optarg ;
 int perror (char*) ;
 struct timeval* run_once (int) ;
 int setrlimit (int ,struct rlimit*) ;
 int stderr ;
 int stdout ;

int
main(int argc, char **argv)
{



 int i, c;
 struct timeval *tv;

 int num_pipes = 100;





 while ((c = getopt(argc, argv, "n:")) != -1) {
  switch (c) {
  case 'n':
   num_pipes = atoi(optarg);
   break;
  default:
   fprintf(stderr, "Illegal argument \"%c\"\n", c);
   exit(1);
  }
 }
 event_init();

 for (i = 0; i < 25; i++) {
  tv = run_once(num_pipes);
  if (tv == ((void*)0))
   exit(1);
  fprintf(stdout, "%ld\n",
   tv->tv_sec * 1000000L + tv->tv_usec);
 }





 exit(0);
}
