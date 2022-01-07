
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FLUSHTAPEBUF () ;
 int HIGHDENSITYTREC ;
 int MAX (int ,int ) ;
 int NTREC ;
 char* _PATH_DEVNULL ;
 char* _PATH_TTY ;
 scalar_t__ bflag ;
 int done (int) ;
 int errno ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,...) ;
 int getuid () ;
 char* host ;
 int * magtape ;
 int newtapebuf (int ) ;
 int ntrec ;
 int pipecmdin ;
 int pipein ;
 scalar_t__ rmthost (char*) ;
 scalar_t__ setuid (int ) ;
 int stderr ;
 int * stdin ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 int * strdup (char*) ;
 char* strerror (int ) ;
 int * terminal ;

void
setinput(char *source, int ispipecommand)
{
 FLUSHTAPEBUF();
 if (bflag)
  newtapebuf(ntrec);
 else
  newtapebuf(MAX(NTREC, HIGHDENSITYTREC));
 terminal = stdin;

 if (ispipecommand)
  pipecmdin++;
 else
 if (strcmp(source, "-") == 0) {




  terminal = fopen(_PATH_TTY, "r");
  if (terminal == ((void*)0)) {
   (void)fprintf(stderr, "cannot open %s: %s\n",
       _PATH_TTY, strerror(errno));
   terminal = fopen(_PATH_DEVNULL, "r");
   if (terminal == ((void*)0)) {
    (void)fprintf(stderr, "cannot open %s: %s\n",
        _PATH_DEVNULL, strerror(errno));
    done(1);
   }
  }
  pipein++;
 }

 if (setuid(getuid()) != 0) {
  fprintf(stderr, "setuid failed\n");
  done(1);
 }
 magtape = strdup(source);
 if (magtape == ((void*)0)) {
  fprintf(stderr, "Cannot allocate space for magtape buffer\n");
  done(1);
 }
}
