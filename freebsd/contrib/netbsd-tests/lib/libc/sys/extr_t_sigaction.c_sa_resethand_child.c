
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_flags; int sa_mask; int * sa_handler; } ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int SIGUSR1 ;
 int exit (int ) ;
 int getpid () ;
 int handler ;
 scalar_t__ handler_called ;
 int kill (int ,int ) ;
 int sigaction (int ,struct sigaction*,int *) ;
 int sigemptyset (int *) ;

__attribute__((used)) static void
sa_resethand_child(const int flags)
{
    struct sigaction sa;

    sa.sa_flags = flags;
    sa.sa_handler = &handler;
    sigemptyset(&sa.sa_mask);

    sigaction(SIGUSR1, &sa, ((void*)0));
    kill(getpid(), SIGUSR1);
    exit(handler_called ? EXIT_SUCCESS : EXIT_FAILURE);
}
