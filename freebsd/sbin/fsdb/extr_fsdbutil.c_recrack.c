
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t strcspn (char*,char*) ;
 int strlen (char*) ;
 char* strsep (char**,char*) ;

char **
recrack(char *line, int *argc, int argc_max)
{
    static char *argv[8];
    int i;
    char *p, *val;
    for (p = line, i = 0; p != ((void*)0) && i < 8 && i < argc_max - 1; i++) {
 while ((val = strsep(&p, " \t\n")) != ((void*)0) && *val == '\0')
         ;
 if (val)
     argv[i] = val;
 else
     break;
    }
    argv[i] = argv[i - 1] + strlen(argv[i - 1]) + 1;
    argv[i][strcspn(argv[i], "\n")] = '\0';
    *argc = i + 1;
    return argv;
}
