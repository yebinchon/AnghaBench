
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int SIGALRM ;
 scalar_t__ SIG_IGN ;
 int _PATH_TTY ;
 int alarm (int ) ;
 int alarmcatch (int ) ;
 char const* attnmessage ;
 int clearerr (int *) ;
 int errno ;
 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (int ,char*) ;
 int fprintf (int ,char*,...) ;
 int quit (char*,...) ;
 scalar_t__ sig ;
 scalar_t__ signal (int ,scalar_t__) ;
 int stderr ;
 int strerror (int ) ;
 scalar_t__ timeout ;

int
query(const char *question)
{
 char replybuffer[64];
 int back, errcount;
 FILE *mytty;

 if ((mytty = fopen(_PATH_TTY, "r")) == ((void*)0))
  quit("fopen on %s fails: %s\n", _PATH_TTY, strerror(errno));
 attnmessage = question;
 timeout = 0;
 alarmcatch(0);
 back = -1;
 errcount = 0;
 do {
  if (fgets(replybuffer, 63, mytty) == ((void*)0)) {
   clearerr(mytty);
   if (++errcount > 30)
    quit("excessive operator query failures\n");
  } else if (replybuffer[0] == 'y' || replybuffer[0] == 'Y') {
   back = 1;
  } else if (replybuffer[0] == 'n' || replybuffer[0] == 'N') {
   back = 0;
  } else {
   (void) fprintf(stderr,
       "  DUMP: \"Yes\" or \"No\"?\n");
   (void) fprintf(stderr,
       "  DUMP: %s: (\"yes\" or \"no\") ", question);
  }
 } while (back < 0);




 (void) alarm(0);
 if (signal(SIGALRM, sig) == SIG_IGN)
  signal(SIGALRM, SIG_IGN);
 (void) fclose(mytty);
 return(back);
}
