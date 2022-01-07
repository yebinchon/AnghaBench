
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGINT ;
 int SIGPIPE ;
 int anonftp ;
 scalar_t__ connected ;
 int disconnect (int ,int *) ;
 int go_fetch (char*) ;
 int intr ;
 int lostpeer ;
 char* outfile ;
 scalar_t__ redirect_loop ;
 scalar_t__ sigsetjmp (int ,int) ;
 int * strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 int toplevel ;
 int xsignal (int ,int ) ;

int
auto_fetch(int argc, char *argv[])
{
 volatile int argpos, rval;

 argpos = rval = 0;

 if (sigsetjmp(toplevel, 1)) {
  if (connected)
   disconnect(0, ((void*)0));
  if (rval > 0)
   rval = argpos + 1;
  return (rval);
 }
 (void)xsignal(SIGINT, intr);
 (void)xsignal(SIGPIPE, lostpeer);




 for (; (rval == 0) && (argpos < argc); argpos++) {
  if (strchr(argv[argpos], ':') == ((void*)0))
   break;
  redirect_loop = 0;
  if (!anonftp)
   anonftp = 2;
  rval = go_fetch(argv[argpos]);
  if (outfile != ((void*)0) && strcmp(outfile, "-") != 0
      && outfile[0] != '|')
   outfile = ((void*)0);
  if (rval > 0)
   rval = argpos + 1;
 }

 if (connected && rval != -1)
  disconnect(0, ((void*)0));
 return (rval);
}
