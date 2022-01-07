
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 scalar_t__ ENOENT ;
 int LOCK_SH ;
 int dumpdates ;
 scalar_t__ errno ;
 int fclose (int *) ;
 int fileno (int *) ;
 int flock (int ,int ) ;
 int * fopen (int ,char*) ;
 int msg (char*,int ,...) ;
 int quit (char*,int ,int ) ;
 int readdumptimes (int *) ;
 int strerror (scalar_t__) ;

void
initdumptimes(void)
{
 FILE *df;

 if ((df = fopen(dumpdates, "r")) == ((void*)0)) {
  if (errno != ENOENT) {
   msg("WARNING: cannot read %s: %s\n", dumpdates,
       strerror(errno));
   return;
  }



  msg("WARNING: no file `%s', making an empty one\n", dumpdates);
  if ((df = fopen(dumpdates, "w")) == ((void*)0)) {
   msg("WARNING: cannot create %s: %s\n", dumpdates,
       strerror(errno));
   return;
  }
  (void) fclose(df);
  if ((df = fopen(dumpdates, "r")) == ((void*)0)) {
   quit("cannot read %s even after creating it: %s\n",
       dumpdates, strerror(errno));

  }
 }
 (void) flock(fileno(df), LOCK_SH);
 readdumptimes(df);
 (void) fclose(df);
}
