
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** save_argv ;
 int xo_errx (int,char*) ;

__attribute__((used)) static char *
next_arg (void)
{
    char *cp = *save_argv;

    if (cp == ((void*)0))
 xo_errx(1, "missing argument");

    save_argv += 1;
    return cp;
}
