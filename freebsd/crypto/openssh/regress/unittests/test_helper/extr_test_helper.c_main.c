
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _IONBF ;
 char* __progname ;
 int data_dir ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 int getopt (int,char**,char*) ;
 int optarg ;
 int printf (char*,...) ;
 int quiet_mode ;
 int setvbuf (int ,int *,int ,int ) ;
 int stderr ;
 int stdout ;
 char* strdup (char*) ;
 char* strrchr (char*,char) ;
 int test_number ;
 int tests () ;
 int verbose_mode ;

int
main(int argc, char **argv)
{
 int ch;


 if (__progname == ((void*)0)) {
  __progname = strrchr(argv[0], '/');
  if (__progname == ((void*)0) || __progname[1] == '\0')
   __progname = argv[0];
  else
   __progname++;
  if ((__progname = strdup(__progname)) == ((void*)0)) {
   fprintf(stderr, "strdup failed\n");
   exit(1);
  }
 }

 while ((ch = getopt(argc, argv, "vqd:")) != -1) {
  switch (ch) {
  case 'd':
   data_dir = optarg;
   break;
  case 'q':
   verbose_mode = 0;
   quiet_mode = 1;
   break;
  case 'v':
   verbose_mode = 1;
   quiet_mode = 0;
   break;
  default:
   fprintf(stderr, "Unrecognised command line option\n");
   fprintf(stderr, "Usage: %s [-v]\n", __progname);
   exit(1);
  }
 }
 setvbuf(stdout, ((void*)0), _IONBF, 0);
 if (!quiet_mode)
  printf("%s: ", __progname);
 if (verbose_mode)
  printf("\n");

 tests();

 if (!quiet_mode)
  printf(" %u tests ok\n", test_number);
 return 0;
}
