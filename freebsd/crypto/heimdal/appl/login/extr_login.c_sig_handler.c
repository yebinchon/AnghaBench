
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RETSIGTYPE ;


 int SIGALRM ;
 int exit (int ) ;
 int fprintf (int ,char*,...) ;
 int login_timeout ;
 int stderr ;

__attribute__((used)) static RETSIGTYPE
sig_handler(int sig)
{
    if (sig == SIGALRM)
         fprintf(stderr, "Login timed out after %d seconds\n",
                login_timeout);
      else
         fprintf(stderr, "Login received signal, exiting\n");
    exit(0);
}
