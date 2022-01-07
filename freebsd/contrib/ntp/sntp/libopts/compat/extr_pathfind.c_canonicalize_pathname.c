
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcpy (char*,char*) ;
 char* strdup (char*) ;

__attribute__((used)) static char *
canonicalize_pathname( char *path )
{
    int i, start;
    char stub_char, *result;


    result = strdup( path );
 if (result == ((void*)0)) {
 return ((void*)0);
 }
    stub_char = (*path == '/') ? '/' : '.';


    i = 0;
    while (result[i]) {
        while (result[i] != '\0' && result[i] != '/')
            i++;

        start = i++;




        if (!result[start])
            break;


        while (result[i] == '/')
            i++;


        if ((start + 1) != i)



        {
            strcpy( result + start + 1, result + i );
            i = start + 1;
        }


        if (start > 0 && result[start - 1] == '\\')
            continue;


        if ((start && !result[i])
            || (result[i] == '.' && !result[i+1])) {
            result[--i] = '\0';
            break;
        }


        if (result[i] == '.') {

            if (result[i + 1] == '/') {
                strcpy( result + i, result + i + 1 );
                i = (start < 0) ? 0 : start;
                continue;
            }


            if (result[i + 1] == '.' &&
                (result[i + 2] == '/' || !result[i + 2])) {
                while (--start > -1 && result[start] != '/')
                    ;
                strcpy( result + start + 1, result + i + 2 );
                i = (start < 0) ? 0 : start;
                continue;
            }
        }
    }

    if (!*result) {
        *result = stub_char;
        result[1] = '\0';
    }

    return result;
}
