
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int LOCALEDIR ;
 int O_BINARY ;
 int PACKAGE ;
 int errno ;
 int fclose (int *) ;
 int fileno (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,char*,char*,char*) ;
 scalar_t__ lzmainfo (char*,int *) ;
 int optind ;
 int parse_args (int,char**) ;
 int printf (char*) ;
 char* progname ;
 int setmode (int ,int ) ;
 int stderr ;
 int * stdin ;
 scalar_t__ strcmp (char*,char*) ;
 char* strerror (int ) ;
 int tuklib_exit (int,int,int) ;
 int tuklib_gettext_init (int ,int ) ;
 int tuklib_progname_init (char**) ;

extern int
main(int argc, char **argv)
{
 tuklib_progname_init(argv);
 tuklib_gettext_init(PACKAGE, LOCALEDIR);

 parse_args(argc, argv);





 int ret = EXIT_SUCCESS;




 if (optind == argc) {
  if (lzmainfo("(stdin)", stdin))
   ret = EXIT_FAILURE;
 } else {
  printf("\n");

  do {
   if (strcmp(argv[optind], "-") == 0) {
    if (lzmainfo("(stdin)", stdin))
     ret = EXIT_FAILURE;
   } else {
    FILE *f = fopen(argv[optind], "r");
    if (f == ((void*)0)) {
     ret = EXIT_FAILURE;
     fprintf(stderr, "%s: %s: %s\n",
       progname,
       argv[optind],
       strerror(errno));
     continue;
    }

    if (lzmainfo(argv[optind], f))
     ret = EXIT_FAILURE;

    printf("\n");
    fclose(f);
   }
  } while (++optind < argc);
 }

 tuklib_exit(ret, EXIT_FAILURE, 1);
}
