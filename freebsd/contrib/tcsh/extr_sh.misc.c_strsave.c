
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (char*,char const*,size_t) ;
 int strlen (char const*) ;
 char* xmalloc (size_t) ;

char *
strsave(const char *s)
{
    char *r;
    size_t size;

    if (s == ((void*)0))
 s = "";
    size = strlen(s) + 1;
    r = xmalloc(size);
    memcpy(r, s, size);
    return (r);
}
