
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIG_DFL ;
 int X_REWRITE ;
 int close_rewind () ;
 int exit (int ) ;
 int fflush (int ) ;
 int kill (int ,int const) ;
 int msg (char*) ;
 int pipeout ;
 int quit (char*) ;
 int signal (int const,int ) ;
 int stderr ;
 int stdout ;

void
sig(int signo)
{
 switch(signo) {
 case 134:
 case 133:
 case 132:
 case 131:
 case 129:
 case 128:
  if (pipeout)
   quit("Signal on pipe: cannot recover\n");
  msg("Rewriting attempted as response to unknown signal.\n");
  (void)fflush(stderr);
  (void)fflush(stdout);
  close_rewind();
  exit(X_REWRITE);

 case 130:
  msg("SIGSEGV: ABORTING!\n");
  (void)signal(130, SIG_DFL);
  (void)kill(0, 130);

 }
}
