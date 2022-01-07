
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int err (int,int *) ;
 int free (char*) ;
 void* malloc (int) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 int usage () ;
 int warnx (char*,char) ;

__attribute__((used)) static void
obsolete(int *argcp, char **argvp[])
{
 int argc, flags;
 char *ap, **argv, *flagsp, **nargv, *p;


 argv = *argvp;
 argc = *argcp;


 ap = argv[1];
 if (argc == 1 || *ap == '-')
  return;


 if ((*argvp = nargv = malloc((argc + 1) * sizeof(char *))) == ((void*)0) ||
     (p = flagsp = malloc(strlen(ap) + 2)) == ((void*)0))
  err(1, ((void*)0));

 *nargv++ = *argv;
 argv += 2, argc -= 2;

 for (flags = 0; *ap; ++ap) {
  switch (*ap) {
  case 'b':
  case 'f':
  case 's':
   if (*argv == ((void*)0)) {
    warnx("option requires an argument -- %c", *ap);
    usage();
   }
   if ((nargv[0] = malloc(strlen(*argv) + 2 + 1)) == ((void*)0))
    err(1, ((void*)0));
   nargv[0][0] = '-';
   nargv[0][1] = *ap;
   (void)strcpy(&nargv[0][2], *argv);
   ++argv;
   ++nargv;
   break;
  default:
   if (!flags) {
    *p++ = '-';
    flags = 1;
   }
   *p++ = *ap;
   break;
  }
 }


 if (flags) {
  *p = '\0';
  *nargv++ = flagsp;
 } else
  free(flagsp);


 while ((*nargv++ = *argv++));


 *argcp = nargv - *argvp - 1;
}
