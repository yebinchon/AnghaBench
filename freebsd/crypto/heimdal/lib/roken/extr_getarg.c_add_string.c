
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char** strings; int num_strings; } ;
typedef TYPE_1__ getarg_strings ;


 int ENOMEM ;
 int free (char**) ;
 char** realloc (char**,int) ;

__attribute__((used)) static int
add_string(getarg_strings *s, char *value)
{
    char **strings;

    strings = realloc(s->strings, (s->num_strings + 1) * sizeof(*s->strings));
    if (strings == ((void*)0)) {
 free(s->strings);
 s->strings = ((void*)0);
 s->num_strings = 0;
 return ENOMEM;
    }
    s->strings = strings;
    s->strings[s->num_strings] = value;
    s->num_strings++;
    return 0;
}
