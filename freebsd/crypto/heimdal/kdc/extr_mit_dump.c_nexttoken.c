
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strsep (char**,char*) ;

__attribute__((used)) static char *
nexttoken(char **p)
{
    char *q;
    do {
 q = strsep(p, " \t");
    } while(q && *q == '\0');
    return q;
}
