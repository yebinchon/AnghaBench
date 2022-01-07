
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;
typedef int FILE ;


 int AU_OFLAG_NORESOLVE ;
 int AU_OFLAG_RAW ;
 int AU_OFLAG_SHORT ;
 int AU_OFLAG_XML ;
 scalar_t__ ENOSYS ;
 int EXIT_FAILURE ;
 int au_print_xml_footer (int ) ;
 int au_print_xml_header (int ) ;
 int cap_enter () ;
 int del ;
 int err (int ,char*) ;
 scalar_t__ errno ;
 int exit (int ) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 scalar_t__ fork () ;
 int getauevent () ;
 int getgrgid (int ) ;
 int getopt (int,char**,char*) ;
 int getpwuid (int ) ;
 int oflags ;
 int oneline ;
 int optarg ;
 int optind ;
 int partial ;
 int perror (char*) ;
 int print_tokens (int *) ;
 int setgroupent (int) ;
 int setpassent (int) ;
 int * stdin ;
 int stdout ;
 int usage () ;
 scalar_t__ waitpid (scalar_t__,int *,int ) ;

int
main(int argc, char **argv)
{
 int ch;
 int i;




 FILE *fp;

 while ((ch = getopt(argc, argv, "d:lnprsx")) != -1) {
  switch(ch) {
  case 'd':
   del = optarg;
   break;

  case 'l':
   oneline = 1;
   break;

  case 'n':
   oflags |= AU_OFLAG_NORESOLVE;
   break;

  case 'p':
   partial = 1;
   break;

  case 'r':
   if (oflags & AU_OFLAG_SHORT)
    usage();
   oflags |= AU_OFLAG_RAW;
   break;

  case 's':
   if (oflags & AU_OFLAG_RAW)
    usage();
   oflags |= AU_OFLAG_SHORT;
   break;

  case 'x':
   oflags |= AU_OFLAG_XML;
   break;

  case '?':
  default:
   usage();
  }
 }
 if (oflags & AU_OFLAG_XML)
  au_print_xml_header(stdout);


 if (optind == argc) {





  print_tokens(stdin);
  return (1);
 }
 for (i = optind; i < argc; i++) {
  fp = fopen(argv[i], "r");
  if (fp == ((void*)0)) {
   perror(argv[i]);
   continue;
  }
  if (print_tokens(fp) == -1)
   perror(argv[i]);

  fclose(fp);
 }

 if (oflags & AU_OFLAG_XML)
  au_print_xml_footer(stdout);

 return (0);
}
