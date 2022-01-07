
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int login_cap_t ;


 char const** arrayize (char const*,char const*,int *) ;
 char* login_getcapstr (int *,char const*,int *,int *) ;

const char **
login_getcaplist(login_cap_t *lc, const char *cap, const char *chars)
{
    const char *lstring;

    if (chars == ((void*)0))
 chars = ", \t";
    if ((lstring = login_getcapstr(lc, cap, ((void*)0), ((void*)0))) != ((void*)0))
 return arrayize(lstring, chars, ((void*)0));
    return ((void*)0);
}
