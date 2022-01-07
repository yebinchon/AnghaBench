
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ao_string_cook (char*,int *) ;

__attribute__((used)) static char *
trim_quotes(char * arg)
{
    switch (*arg) {
    case '"':
    case '\'':
        ao_string_cook(arg, ((void*)0));
    }
    return arg;
}
