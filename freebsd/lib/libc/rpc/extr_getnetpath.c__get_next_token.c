
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char*,char) ;
 int strcpy (char*,char*) ;

char *
_get_next_token(char *npp, int token)
{
    char *cp;
    char *np;
    char *ep;

    if ((cp = strchr(npp, token)) == ((void*)0)) {
 return (((void*)0));
    }



    if ((cp > npp) && (cp[-1] == '\\')) {

 if ((cp > npp + 1) && (cp[-2] != '\\')) {

     strcpy(&cp[-1], cp);




     return (_get_next_token(cp, token));
 }
    }

    *cp++ = '\0';

    ep = npp;
    while ((np = strchr(ep, '\\')) != ((void*)0)) {
 if (np[1] == '\\')
     np++;
 strcpy(np, (ep = &np[1]));
    }
    return (cp);
}
