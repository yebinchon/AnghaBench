
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char NUL ;
 scalar_t__ OPTION_LOAD_KEEP ;
 char const* SPN_WHITESPACE_BACK (char const*,char const*) ;
 char* SPN_WHITESPACE_CHARS (char const*) ;
 scalar_t__ option_load_mode ;
 char* strstr (char const*,char*) ;

__attribute__((used)) static char const *
find_end_xml(char const * src, size_t nm_len, char const * val, size_t * len)
{
    char z[72] = "</";
    char * dst = z + 2;

    do {
        *(dst++) = *(src++);
    } while (--nm_len > 0);
    *(dst++) = '>';
    *dst = NUL;

    {
        char const * res = strstr(val, z);

        if (res != ((void*)0)) {
            char const * end = (option_load_mode != OPTION_LOAD_KEEP)
                ? SPN_WHITESPACE_BACK(val, res)
                : res;
            *len = (size_t)(end - val);
            res = SPN_WHITESPACE_CHARS(res + (dst - z));
        }
        return res;
    }
}
