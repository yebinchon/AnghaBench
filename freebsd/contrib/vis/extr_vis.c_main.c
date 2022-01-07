
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int VIS_CSTYLE ;
 int VIS_HTTPSTYLE ;
 int VIS_MIMESTYLE ;
 int VIS_NOSLASH ;
 int VIS_OCTAL ;
 int VIS_SAFE ;
 int VIS_TAB ;
 int VIS_WHITE ;
 int atoi (int ) ;
 int debug ;
 int eflags ;
 int errx (int,char*) ;
 int extra ;
 int fclose (int *) ;
 int fold ;
 int foldwidth ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,char*) ;
 int getopt (int,char**,char*) ;
 char* getprogname () ;
 int markeol ;
 int none ;
 int optarg ;
 scalar_t__ optind ;
 int process (int *) ;
 int stderr ;
 int * stdin ;
 int warn (char*,char*) ;

int
main(int argc, char *argv[])
{
 FILE *fp;
 int ch;
 int rval;

 while ((ch = getopt(argc, argv, "bcde:F:fhlmnostw")) != -1)
  switch((char)ch) {
  case 'b':
   eflags |= VIS_NOSLASH;
   break;
  case 'c':
   eflags |= VIS_CSTYLE;
   break;





  case 'e':
   extra = optarg;
   break;
  case 'F':
   if ((foldwidth = atoi(optarg)) < 5) {
    errx(1, "can't fold lines to less than 5 cols");

   }
   markeol++;
   break;
  case 'f':
   fold++;
   break;
  case 'h':
   eflags |= VIS_HTTPSTYLE;
   break;
  case 'l':
   markeol++;
   break;
  case 'm':
   eflags |= VIS_MIMESTYLE;
   if (foldwidth == 80)
    foldwidth = 76;
   break;
  case 'n':
   none++;
   break;
  case 'o':
   eflags |= VIS_OCTAL;
   break;
  case 's':
   eflags |= VIS_SAFE;
   break;
  case 't':
   eflags |= VIS_TAB;
   break;
  case 'w':
   eflags |= VIS_WHITE;
   break;
  case '?':
  default:
   (void)fprintf(stderr,
       "Usage: %s [-bcfhlmnostw] [-e extra]"
       " [-F foldwidth] [file ...]\n", getprogname());
   return 1;
  }

 if ((eflags & (VIS_HTTPSTYLE|VIS_MIMESTYLE)) ==
     (VIS_HTTPSTYLE|VIS_MIMESTYLE))
  errx(1, "Can't specify -m and -h at the same time");

 argc -= optind;
 argv += optind;

 rval = 0;

 if (*argv)
  while (*argv) {
   if ((fp = fopen(*argv, "r")) != ((void*)0)) {
    process(fp);
    (void)fclose(fp);
   } else {
    warn("%s", *argv);
    rval = 1;
   }
   argv++;
  }
 else
  process(stdin);
 return rval;
}
