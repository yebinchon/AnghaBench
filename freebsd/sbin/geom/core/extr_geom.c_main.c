
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int err (int,char*) ;
 int errx (int ,char*) ;
 int exit (int ) ;
 int get_class (int*,char***) ;
 int getopt (int,char**,char*) ;
 int getprogname () ;
 int list_one_geom_by_provider (char*) ;
 int optarg ;
 int run_command (int,char**) ;
 int show_tree () ;
 scalar_t__ strcmp (int ,char*) ;
 char* strdup (int ) ;
 int usage () ;

int
main(int argc, char *argv[])
{
 char *provider_name;
 bool tflag;
 int ch;

 provider_name = ((void*)0);
 tflag = 0;

 if (strcmp(getprogname(), "geom") == 0) {
  while ((ch = getopt(argc, argv, "hp:t")) != -1) {
   switch (ch) {
   case 'p':
    provider_name = strdup(optarg);
    if (provider_name == ((void*)0))
     err(1, "strdup");
    break;
   case 't':
    tflag = 1;
    break;
   case 'h':
   default:
    usage();
   }
  }




 }

 if (tflag && provider_name != ((void*)0)) {
  errx(EXIT_FAILURE,
      "At most one of -P and -t may be specified.");
 }

 if (provider_name != ((void*)0)) {
  list_one_geom_by_provider(provider_name);
  return (0);
 }

 if (tflag) {
  show_tree();
  return (0);
 }

 get_class(&argc, &argv);
 run_command(argc, argv);


 exit(EXIT_FAILURE);
}
