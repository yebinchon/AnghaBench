
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char const*,char const*) ;
 size_t strlen (char const*) ;

__attribute__((used)) static int check_end(const char *str, const char *end)
{
    size_t elen, slen;
    const char *tmp;

    elen = strlen(end);
    slen = strlen(str);
    if (elen > slen)
        return 1;
    tmp = str + slen - elen;
    return strcmp(tmp, end);
}
