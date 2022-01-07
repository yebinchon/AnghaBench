
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMD_OK ;
 int free (char*) ;
 int getopt (int,char**,char*) ;
 int optind ;
 int optreset ;
 int printf (char*,...) ;
 char* unargv (int,char**) ;

__attribute__((used)) static int
command_echo(int argc, char *argv[])
{
 char *s;
 int nl, ch;

 nl = 0;
 optind = 1;
 optreset = 1;
 while ((ch = getopt(argc, argv, "n")) != -1) {
  switch (ch) {
  case 'n':
   nl = 1;
   break;
  case '?':
  default:

   return (CMD_OK);
  }
 }
 argv += (optind);
 argc -= (optind);

 s = unargv(argc, argv);
 if (s != ((void*)0)) {
  printf("%s", s);
  free(s);
 }
 if (!nl)
  printf("\n");
 return (CMD_OK);
}
