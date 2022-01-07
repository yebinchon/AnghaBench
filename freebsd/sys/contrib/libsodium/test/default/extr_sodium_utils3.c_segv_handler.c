
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGABRT ;
 int SIGBUS ;
 int SIGSEGV ;
 int SIG_DFL ;
 int exit (int ) ;
 int printf (char*) ;
 int signal (int ,int ) ;

__attribute__((used)) __attribute__((noreturn)) static void
segv_handler(int sig)
{
    (void) sig;

    printf("Intentional segfault / bus error caught\n");
    printf("OK\n");
    exit(0);
}
