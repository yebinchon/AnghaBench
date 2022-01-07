
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char*,char) ;
 size_t strcspn (char*,char const*) ;
 int strlen (char*) ;

__attribute__((used)) static char *
next_component_string(char * begin, const char * delims, char **state)
{
    char * end;

    if (begin == ((void*)0))
        begin = *state;

    if (*begin == '\0')
        return ((void*)0);

    end = begin;
    while (*end == '"') {
        char * t = strchr(end + 1, '"');

        if (t)
            end = ++t;
        else
            end += strlen(end);
    }

    if (*end != '\0') {
        size_t pos;

        pos = strcspn(end, delims);
        end = end + pos;
    }

    if (*end != '\0') {
        *end = '\0';
        *state = end + 1;
        if (*begin == '"' && *(end - 1) == '"' && begin + 1 < end) {
            begin++; *(end - 1) = '\0';
        }
        return begin;
    }

    *state = end;
    if (*begin == '"' && *(end - 1) == '"' && begin + 1 < end) {
        begin++; *(end - 1) = '\0';
    }
    return begin;
}
