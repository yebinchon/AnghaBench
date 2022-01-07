
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bsdcat {char** argv; int argc; } ;



 int a ;
 int archive_read_free (int ) ;
 char* bsdcat_current_path ;
 int bsdcat_getopt (struct bsdcat*) ;
 int bsdcat_next () ;
 int bsdcat_read_to_stdout (char*) ;
 int exit (int ) ;
 int exit_status ;
 int lafe_setprogname (char*,char*) ;
 int memset (struct bsdcat*,int ,int) ;
 int stderr ;
 int stdout ;
 int usage (int ,int) ;
 int version () ;

int
main(int argc, char **argv)
{
 struct bsdcat *bsdcat, bsdcat_storage;
 int c;

 bsdcat = &bsdcat_storage;
 memset(bsdcat, 0, sizeof(*bsdcat));

 lafe_setprogname(*argv, "bsdcat");

 bsdcat->argv = argv;
 bsdcat->argc = argc;

 while ((c = bsdcat_getopt(bsdcat)) != -1) {
  switch (c) {
  case 'h':
   usage(stdout, 0);
   break;
  case 128:
   version();
   break;
  default:
   usage(stderr, 1);
  }
 }

 bsdcat_next();
 if (*bsdcat->argv == ((void*)0)) {
  bsdcat_current_path = "<stdin>";
  bsdcat_read_to_stdout(((void*)0));
 } else {
  while (*bsdcat->argv) {
   bsdcat_current_path = *bsdcat->argv++;
   bsdcat_read_to_stdout(bsdcat_current_path);
   bsdcat_next();
  }
  archive_read_free(a);
 }

 exit(exit_status);
}
