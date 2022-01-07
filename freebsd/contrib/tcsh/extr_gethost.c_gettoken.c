
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ISSPACE (char) ;

__attribute__((used)) static char *
gettoken(char **pptr, char *token)
{
    char *ptr = *pptr;
    char *tok = token;

    for (; *ptr && ISSPACE(*ptr); ptr++)
 continue;

    for (; *ptr && *ptr != ':'; *tok++ = *ptr++)
 continue;

    if (*ptr == ':')
 ptr++;
    else
 tok--;

    for (tok--; tok >= token && *tok && ISSPACE(*tok); tok--)
 continue;

    *++tok = '\0';

    *pptr = ptr;
    return token;
}
