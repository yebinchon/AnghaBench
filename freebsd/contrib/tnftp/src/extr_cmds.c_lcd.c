
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UPRINTF (char*,char*) ;
 int chdir (char*) ;
 int code ;
 int fprintf (int ,char*,...) ;
 int free (char*) ;
 char* globulize (char*) ;
 char* localcwd ;
 char* localhome ;
 int ttyout ;
 int updatelocalcwd () ;
 int warn (char*,char*) ;

void
lcd(int argc, char *argv[])
{
 char *locdir;

 code = -1;
 if (argc == 1) {
  argc++;
  argv[1] = localhome;
 }
 if (argc != 2) {
  UPRINTF("usage: %s [local-directory]\n", argv[0]);
  return;
 }
 if ((locdir = globulize(argv[1])) == ((void*)0))
  return;
 if (chdir(locdir) == -1)
  warn("Can't chdir `%s'", locdir);
 else {
  updatelocalcwd();
  if (localcwd[0]) {
   fprintf(ttyout, "Local directory now: %s\n", localcwd);
   code = 0;
  } else {
   fprintf(ttyout, "Unable to determine local directory\n");
  }
 }
 (void)free(locdir);
}
