
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 char* _nc_progname ;
 int exit (int ) ;
 int fprintf (int ,char*,char*) ;
 char* getenv (char*) ;
 int stderr ;

__attribute__((used)) static char *
terminal_env(void)
{
    char *terminal;

    if ((terminal = getenv("TERM")) == 0) {
 (void) fprintf(stderr,
         "%s: environment variable TERM not set\n",
         _nc_progname);
 exit(EXIT_FAILURE);
    }
    return terminal;
}
