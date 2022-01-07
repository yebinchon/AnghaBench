
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (char*,char const*,size_t) ;
 char* xmalloc (size_t) ;

char *
strnsave(const char *s, size_t len)
{
    char *r;

    r = xmalloc(len + 1);
    memcpy(r, s, len);
    r[len] = '\0';
    return r;
}
