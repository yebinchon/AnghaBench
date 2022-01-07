
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* ambiguous ;
 int isprefix (char*,char*) ;

char **
genget(char *name, char **table, int stlen)



{
    char **c, **found;
    int n;

    if (name == 0)
 return 0;

    found = 0;
    for (c = table; *c != 0; c = (char **)((char *)c + stlen)) {
 if ((n = isprefix(name, *c)) == 0)
     continue;
 if (n < 0)
     return(c);
 if (found)
     return(&ambiguous);
 found = c;
    }
    return(found);
}
