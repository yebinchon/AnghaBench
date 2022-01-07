
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _exit (int ) ;
 int _rtld_error (char*,char const*) ;
 int dbg (char*,...) ;
 int parse_integer (char*) ;
 int print_usage (char*) ;
 int rtld_die () ;
 scalar_t__ strcmp (char const*,char*) ;
 int strlen (char const*) ;

__attribute__((used)) static int
parse_args(char* argv[], int argc, bool *use_pathp, int *fdp)
{
 const char *arg;
 int fd, i, j, arglen;
 char opt;

 dbg("Parsing command-line arguments");
 *use_pathp = 0;
 *fdp = -1;

 for (i = 1; i < argc; i++ ) {
  arg = argv[i];
  dbg("argv[%d]: '%s'", i, arg);





  if (strcmp(arg, "--") == 0) {
   i++;
   break;
  }
  if (arg[0] != '-')
   break;





  arglen = strlen(arg);
  for (j = 1; j < arglen; j++) {
   opt = arg[j];
   if (opt == 'h') {
    print_usage(argv[0]);
    _exit(0);
   } else if (opt == 'f') {






   if (j != arglen - 1) {

    _rtld_error("Invalid options: %s", arg);
    rtld_die();
   }
   i++;
   fd = parse_integer(argv[i]);
   if (fd == -1) {
    _rtld_error("Invalid file descriptor: '%s'",
        argv[i]);
    rtld_die();
   }
   *fdp = fd;
   break;
   } else if (opt == 'p') {
    *use_pathp = 1;
   } else {
    _rtld_error("Invalid argument: '%s'", arg);
    print_usage(argv[0]);
    rtld_die();
   }
  }
 }

 return (i);
}
