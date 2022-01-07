
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int alwaysno ;
 int alwaysyes ;
 int checkfilesys (int ) ;
 int exit (int) ;
 int getopt (int,char**,char*) ;
 scalar_t__ optind ;
 int preen ;
 int setcdevname (char*,int) ;
 int skipclean ;
 int usage () ;

int
main(int argc, char **argv)
{
 int ret = 0, erg;
 int ch;

 skipclean = 1;
 while ((ch = getopt(argc, argv, "CfFnpy")) != -1) {
  switch (ch) {
  case 'C':
   break;
  case 'f':
   skipclean = 0;
   break;
  case 'F':
   exit(5);
  case 'n':
   alwaysno = 1;
   alwaysyes = 0;
   break;
  case 'y':
   alwaysyes = 1;
   alwaysno = 0;
   break;

  case 'p':
   preen = 1;
   break;

  default:
   usage();
   break;
  }
 }
 argc -= optind;
 argv += optind;

 if (!argc)
  usage();

 while (--argc >= 0) {
  setcdevname(*argv, preen);
  erg = checkfilesys(*argv++);
  if (erg > ret)
   ret = erg;
 }

 return ret;
}
