
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char const*) ;
 scalar_t__ strncmp (char*,char const*,int) ;

__attribute__((used)) static int mime_bound_check(char *line, int linelen, const char *bound, int blen)
{
    if (linelen == -1)
        linelen = strlen(line);
    if (blen == -1)
        blen = strlen(bound);

    if (blen + 2 > linelen)
        return 0;

    if ((strncmp(line, "--", 2) == 0)
        && strncmp(line + 2, bound, blen) == 0) {
        if (strncmp(line + blen + 2, "--", 2) == 0)
            return 2;
        else
            return 1;
    }
    return 0;
}
