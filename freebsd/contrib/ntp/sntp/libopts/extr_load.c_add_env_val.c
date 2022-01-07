
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IS_VALUE_NAME_CHAR (int) ;
 char NUL ;
 char* getenv (char*) ;
 int sprintf (char*,char*,char*,char const*) ;
 unsigned int strlen (char const*) ;

__attribute__((used)) static bool
add_env_val(char * buf, int buf_sz, char const * name)
{
    char * dir_part = buf;

    for (;;) {
        int ch = (int)*++name;
        if (! IS_VALUE_NAME_CHAR(ch))
            break;
        *(dir_part++) = (char)ch;
    }

    if (dir_part == buf)
        return 0;

    *dir_part = NUL;

    dir_part = getenv(buf);




    if (dir_part == ((void*)0))
        return 0;

    if (strlen(dir_part) + 1 + strlen(name) >= (unsigned)buf_sz)
        return 0;

    sprintf(buf, "%s%s", dir_part, name);
    return 1;
}
