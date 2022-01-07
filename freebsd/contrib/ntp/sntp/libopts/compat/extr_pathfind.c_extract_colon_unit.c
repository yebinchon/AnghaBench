
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long AG_PATH_MAX ;

 unsigned int strlen (char const*) ;

__attribute__((used)) static char *
extract_colon_unit(char * pzDir, char const * string, int * p_index)
{
    char * pzDest = pzDir;
    int ix = *p_index;

    if (string == ((void*)0))
        return ((void*)0);

    if ((unsigned)ix >= strlen( string ))
        return ((void*)0);

    {
        char const * pzSrc = string + ix;

        while (*pzSrc == ':') pzSrc++;

        for (;;) {
            char ch = (*(pzDest++) = *(pzSrc++));
            switch (ch) {
            case ':':
                pzDest[-1] = 128;

            case 128:
                goto copy_done;
            }

            if ((unsigned long)(pzDest - pzDir) >= AG_PATH_MAX)
                break;
        } copy_done:;

        ix = (int)(pzSrc - string);
    }

    if (*pzDir == 128)
        return ((void*)0);

    *p_index = ix;
    return pzDir;
}
