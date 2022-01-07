
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int ExitProgram (int ) ;
 int fprintf (int ,char*,char*) ;
 char* prg_name ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{
    fprintf(stderr, "usage: %s [-V] [-S] [-T term] capname\n", prg_name);
    ExitProgram(EXIT_FAILURE);
}
