
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abort () ;
 int * codefile ;
 int fclose (int *) ;

void
close_codefile(void)
{
    if (codefile == ((void*)0))
 abort();

    fclose(codefile);
    codefile = ((void*)0);
}
