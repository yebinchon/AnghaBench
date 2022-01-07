
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int closemt () ;
 char* dirfile ;
 int exit (int) ;
 char* modefile ;
 int truncate (char*,int ) ;
 int unlink (char*) ;

void
done(int exitcode)
{

 closemt();
 if (modefile[0] != '#') {
  (void) truncate(modefile, 0);
  (void) unlink(modefile);
 }
 if (dirfile[0] != '#') {
  (void) truncate(dirfile, 0);
  (void) unlink(dirfile);
 }
 exit(exitcode);
}
