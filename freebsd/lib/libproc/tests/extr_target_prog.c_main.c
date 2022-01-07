
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int SIGUSR1 ;
 scalar_t__ SIG_ERR ;
 int bar () ;
 int err (int,char*) ;
 int getpid () ;
 scalar_t__ kill (int ,int ) ;
 int saw ;
 scalar_t__ signal (int ,int ) ;
 scalar_t__ strcmp (char*,char*) ;
 int usr1 ;

int
main(int argc, char **argv)
{

 bar();

 if (argc == 1)
  return (EXIT_SUCCESS);
 if (argc == 2 && strcmp(argv[1], "-s") == 0) {
  if (signal(SIGUSR1, usr1) == SIG_ERR)
   err(1, "signal");
  if (kill(getpid(), SIGUSR1) != 0)
   err(1, "kill");
  return (saw == 1 ? EXIT_SUCCESS : EXIT_FAILURE);
 }
 return (EXIT_FAILURE);
}
