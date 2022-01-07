
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fstab {int fs_spec; int fs_vfstype; } ;


 int LOG_ERR ;
 int exit (int) ;
 struct fstab* getfsent () ;
 int logmsg (int ,char*) ;
 char** malloc (int) ;
 char** realloc (char**,int) ;
 scalar_t__ strcmp (int ,char*) ;
 char* strdup (int ) ;

__attribute__((used)) static char **
enum_dumpdevs(int *argcp)
{
 struct fstab *fsp;
 char **argv;
 int argc, n;






 argc = 0;
 n = 8;
 argv = malloc(n * sizeof(*argv));
 if (argv == ((void*)0)) {
  logmsg(LOG_ERR, "malloc(): %m");
  exit(1);
 }
 for (;;) {
  fsp = getfsent();
  if (fsp == ((void*)0))
   break;
  if (strcmp(fsp->fs_vfstype, "swap") != 0 &&
      strcmp(fsp->fs_vfstype, "dump") != 0)
   continue;
  if (argc >= n) {
   n *= 2;
   argv = realloc(argv, n * sizeof(*argv));
   if (argv == ((void*)0)) {
    logmsg(LOG_ERR, "realloc(): %m");
    exit(1);
   }
  }
  argv[argc] = strdup(fsp->fs_spec);
  if (argv[argc] == ((void*)0)) {
   logmsg(LOG_ERR, "strdup(): %m");
   exit(1);
  }
  argc++;
 }
 *argcp = argc;
 return (argv);
}
