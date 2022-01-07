
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int line ;
typedef int gid_t ;
typedef int FILE ;


 int CCD_UNCONFIGALL ;
 int _POSIX2_LINE_MAX ;
 int ccdconf ;
 scalar_t__ do_single (int,char**,int) ;
 int err (int,char*) ;
 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (int ,char*) ;
 int free (char**) ;
 int getegid () ;
 int getgid () ;
 int lineno ;
 char** realloc (char**,int) ;
 scalar_t__ setegid (int ) ;
 char* strrchr (char*,char) ;
 char* strtok (char*,char*) ;
 int warn (char*,int ) ;
 int warnx (char*) ;

__attribute__((used)) static int
do_all(int action)
{
 FILE *f;
 char line[_POSIX2_LINE_MAX];
 char *cp, **argv;
 int argc, rval;
 gid_t egid;

 rval = 0;
 egid = getegid();
 if (setegid(getgid()) != 0)
  err(1, "setegid failed");
 if ((f = fopen(ccdconf, "r")) == ((void*)0)) {
  if (setegid(egid) != 0)
   err(1, "setegid failed");
  warn("fopen: %s", ccdconf);
  return (1);
 }
 if (setegid(egid) != 0)
  err(1, "setegid failed");

 while (fgets(line, sizeof(line), f) != ((void*)0)) {
  argc = 0;
  argv = ((void*)0);
  ++lineno;
  if ((cp = strrchr(line, '\n')) != ((void*)0))
   *cp = '\0';


  if (line[0] == '\0')
   goto end_of_line;
  for (cp = line; (cp = strtok(cp, " \t")) != ((void*)0); cp = ((void*)0)) {
   if (*cp == '#')
    break;
   if ((argv = realloc(argv,
       sizeof(char *) * ++argc)) == ((void*)0)) {
    warnx("no memory to configure ccds");
    return (1);
   }
   argv[argc - 1] = cp;







   if (action == CCD_UNCONFIGALL) {
    if (do_single(argc, argv, action))
     rval = 1;
    goto end_of_line;
   }
  }
  if (argc != 0)
   if (do_single(argc, argv, action))
    rval = 1;

 end_of_line:
  if (argv != ((void*)0))
   free(argv);
 }

 (void)fclose(f);
 return (rval);
}
