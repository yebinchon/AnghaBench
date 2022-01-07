
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* VOIDP (char const*) ;
 int memcpy (char*,char const*,size_t) ;

__attribute__((used)) static int
parse_opt(char const ** nm_pp, char ** arg_pp, char * buf, size_t bufsz)
{
    int res = 0;
    char const * p = *nm_pp;
    *arg_pp = ((void*)0);

    for (;;) {
        switch (*(p++)) {
        case 128: return res;

        case '=':
            memcpy(buf, *nm_pp, (size_t)res);

            buf[res] = 128;
            *nm_pp = buf;
            *arg_pp = VOIDP(p);
            return res;

        default:
            if (++res >= (int)bufsz)
                return -1;
        }
    }
}
