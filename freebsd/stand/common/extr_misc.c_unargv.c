
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* malloc (size_t) ;
 int strcat (char*,char*) ;
 scalar_t__ strlen (char*) ;

char *
unargv(int argc, char *argv[])
{
    size_t hlong;
    int i;
    char *cp;

    for (i = 0, hlong = 0; i < argc; i++)
 hlong += strlen(argv[i]) + 2;

    if(hlong == 0)
 return(((void*)0));

    cp = malloc(hlong);
    cp[0] = 0;
    for (i = 0; i < argc; i++) {
 strcat(cp, argv[i]);
 if (i < (argc - 1))
   strcat(cp, " ");
    }

    return(cp);
}
