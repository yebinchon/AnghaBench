
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int ExitProgram (int ) ;
 int SET_TTY (int ,int *) ;
 int STDERR_FILENO ;
 scalar_t__ can_restore ;
 int fflush (int ) ;
 int fprintf (int ,char*) ;
 int original ;
 int stderr ;

__attribute__((used)) static void
exit_error(void)
{
    if (can_restore)
 SET_TTY(STDERR_FILENO, &original);
    (void) fprintf(stderr, "\n");
    fflush(stderr);
    ExitProgram(EXIT_FAILURE);

}
