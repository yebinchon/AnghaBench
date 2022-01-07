
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int ExitProgram (int ) ;
 char* _nc_progname ;
 int fprintf (int ,char*,char*) ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{
    (void) fprintf(stderr, "usage: %s [-ahsuUV] [-v n] [file...]\n", _nc_progname);
    ExitProgram(EXIT_FAILURE);
}
