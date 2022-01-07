
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mparse {int dummy; } ;


 scalar_t__ MANDOCLEVEL_BADARG ;
 scalar_t__ MANDOCLEVEL_OK ;
 int MANDOC_OS_OTHER ;
 int MPARSE_LATIN1 ;
 int MPARSE_SO ;
 int MPARSE_UTF8 ;
 int MPARSE_VALIDATE ;
 int STDIN_FILENO ;
 int assert (struct mparse*) ;
 int getopt (int,char**,char*) ;
 int mchars_alloc () ;
 int mchars_free () ;
 struct mparse* mparse_alloc (int,int ,int *) ;
 int mparse_free (struct mparse*) ;
 int mparse_open (struct mparse*,char*) ;
 int mparse_reset (struct mparse*) ;
 int perror (char*) ;
 int pmandoc (struct mparse*,int,char*,int) ;
 char* progname ;
 char* strrchr (char*,char) ;
 int usage () ;

int
main(int argc, char *argv[])
{
 struct mparse *mp;
 int ch, fd, i, list;
 extern int optind;

 if (argc < 1)
  progname = "demandoc";
 else if ((progname = strrchr(argv[0], '/')) == ((void*)0))
  progname = argv[0];
 else
  ++progname;

 mp = ((void*)0);
 list = 0;

 while (-1 != (ch = getopt(argc, argv, "ikm:pw")))
  switch (ch) {
  case ('i'):

  case ('k'):

  case ('m'):

  case ('p'):
   break;
  case ('w'):
   list = 1;
   break;
  default:
   usage();
   return (int)MANDOCLEVEL_BADARG;
  }

 argc -= optind;
 argv += optind;

 mchars_alloc();
 mp = mparse_alloc(MPARSE_SO | MPARSE_UTF8 | MPARSE_LATIN1 |
     MPARSE_VALIDATE, MANDOC_OS_OTHER, ((void*)0));
 assert(mp);

 if (argc < 1)
  pmandoc(mp, STDIN_FILENO, "<stdin>", list);

 for (i = 0; i < argc; i++) {
  mparse_reset(mp);
  if ((fd = mparse_open(mp, argv[i])) == -1) {
   perror(argv[i]);
   continue;
  }
  pmandoc(mp, fd, argv[i], list);
 }

 mparse_free(mp);
 mchars_free();
 return (int)MANDOCLEVEL_OK;
}
