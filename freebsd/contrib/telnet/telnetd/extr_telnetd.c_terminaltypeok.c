
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * terminaltype ;
 scalar_t__ tgetent (char*,char*) ;

int
terminaltypeok(char *s)
{
    char buf[1024];

    if (terminaltype == ((void*)0))
 return(1);
    if (tgetent(buf, s) == 0)
 return(0);
    return(1);
}
