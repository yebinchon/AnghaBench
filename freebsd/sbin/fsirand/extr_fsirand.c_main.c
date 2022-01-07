
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlimit {int rlim_max; int rlim_cur; } ;


 int RLIMIT_DATA ;
 int exit (int) ;
 int force ;
 scalar_t__ fsirand (char*) ;
 int getopt (int,char**,char*) ;
 scalar_t__ getrlimit (int ,struct rlimit*) ;
 int ignorelabel ;
 int optind ;
 int printonly ;
 int putchar (char) ;
 int puts (char*) ;
 scalar_t__ setrlimit (int ,struct rlimit*) ;
 int srandomdev () ;
 int usage () ;
 int warn (char*) ;

int
main(int argc, char *argv[])
{
 int n, ex = 0;
 struct rlimit rl;

 while ((n = getopt(argc, argv, "bfp")) != -1) {
  switch (n) {
  case 'b':
   ignorelabel++;
   break;
  case 'p':
   printonly++;
   break;
  case 'f':
   force++;
   break;
  default:
   usage();
  }
 }
 if (argc - optind < 1)
  usage();

 srandomdev();


 if (getrlimit(RLIMIT_DATA, &rl) == 0) {
  rl.rlim_cur = rl.rlim_max;
  if (setrlimit(RLIMIT_DATA, &rl) < 0)
   warn("can't get resource limit to max data size");
 } else
  warn("can't get resource limit for data size");

 for (n = optind; n < argc; n++) {
  if (argc - optind != 1)
   (void)puts(argv[n]);
  ex += fsirand(argv[n]);
  if (n < argc - 1)
   putchar('\n');
 }

 exit(ex);
}
