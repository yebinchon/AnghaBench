
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t argc; int size; char** argv; } ;
typedef TYPE_1__ ARGS ;


 char** OPENSSL_realloc (char**,int) ;
 int _UC (char) ;
 char** app_malloc (int,char*) ;
 scalar_t__ isspace (int ) ;

int chopup_args(ARGS *arg, char *buf)
{
    int quoted;
    char c = '\0', *p = ((void*)0);

    arg->argc = 0;
    if (arg->size == 0) {
        arg->size = 20;
        arg->argv = app_malloc(sizeof(*arg->argv) * arg->size, "argv space");
    }

    for (p = buf;;) {

        while (*p && isspace(_UC(*p)))
            p++;
        if (!*p)
            break;


        if (arg->argc >= arg->size) {
            char **tmp;
            arg->size += 20;
            tmp = OPENSSL_realloc(arg->argv, sizeof(*arg->argv) * arg->size);
            if (tmp == ((void*)0))
                return 0;
            arg->argv = tmp;
        }
        quoted = *p == '\'' || *p == '"';
        if (quoted)
            c = *p++;
        arg->argv[arg->argc++] = p;


        if (quoted) {
            while (*p && *p != c)
                p++;
            *p++ = '\0';
        } else {
            while (*p && !isspace(_UC(*p)))
                p++;
            if (*p)
                *p++ = '\0';
        }
    }
    arg->argv[arg->argc] = ((void*)0);
    return 1;
}
