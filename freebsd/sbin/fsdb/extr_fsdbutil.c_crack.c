
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strsep (char**,char*) ;

char **
crack(char *line, int *argc)
{
    static char *argv[8];
    int i;
    char *p, *val;
    for (p = line, i = 0; p != ((void*)0) && i < 8; i++) {
 while ((val = strsep(&p, " \t\n")) != ((void*)0) && *val == '\0')
         ;
 if (val)
     argv[i] = val;
 else
     break;
    }
    *argc = i;
    return argv;
}
