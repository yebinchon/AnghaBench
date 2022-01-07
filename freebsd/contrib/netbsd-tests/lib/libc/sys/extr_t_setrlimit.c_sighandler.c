
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int SIGXFSZ ;
 int _exit (int ) ;

__attribute__((used)) static void
sighandler(int signo)
{

 if (signo != SIGXFSZ)
  _exit(EXIT_FAILURE);

 _exit(EXIT_SUCCESS);
}
