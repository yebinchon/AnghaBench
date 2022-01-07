
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* msg; int err; } ;


 TYPE_1__* errtab ;
 int sprintf (char*,char*,int) ;

char *
strerror(int err)
{
    static char msg[32];
    int i;

    for (i = 0; errtab[i].msg != ((void*)0); i++)
 if (errtab[i].err == err)
     return(errtab[i].msg);
    sprintf(msg, "unknown error (%d)", err);
    return(msg);
}
