
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (char*,char const*,size_t) ;
 size_t strlen (char const*) ;
 char* xmalloc (size_t) ;

char *
strspl(const char *cp, const char *dp)
{
    char *ep;
    size_t cl, dl;

    if (!cp)
 cp = "";
    if (!dp)
 dp = "";
    cl = strlen(cp);
    dl = strlen(dp);
    ep = xmalloc((cl + dl + 1) * sizeof(char));
    memcpy(ep, cp, cl);
    memcpy(ep + cl, dp, dl + 1);
    return (ep);
}
