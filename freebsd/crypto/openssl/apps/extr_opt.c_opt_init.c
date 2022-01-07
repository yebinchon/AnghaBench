
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* name; int valtype; scalar_t__ retval; } ;
typedef TYPE_1__ OPTIONS ;


 char* OPT_HELP_STR ;
 char* OPT_MORE_STR ;
 int argc ;
 char** argv ;
 int assert (int) ;
 int opt_index ;
 int opt_progname (char*) ;
 TYPE_1__ const* opts ;
 char* prog ;
 scalar_t__ strcmp (char*,char*) ;
 TYPE_1__ const* unknown ;

char *opt_init(int ac, char **av, const OPTIONS *o)
{

    argc = ac;
    argv = av;
    opt_index = 1;
    opts = o;
    opt_progname(av[0]);
    unknown = ((void*)0);

    for (; o->name; ++o) {

        const OPTIONS *next;
        int duplicated, i;


        if (o->name == OPT_HELP_STR || o->name == OPT_MORE_STR)
            continue;

        i = o->valtype;


        assert(o->name[0] != '-');
        assert(o->retval > 0);
        switch (i) {
        case 0: case '-': case '/': case '<': case '>': case 'E': case 'F':
        case 'M': case 'U': case 'f': case 'l': case 'n': case 'p': case 's':
        case 'u': case 'c':
            break;
        default:
            assert(0);
        }


        for (next = o + 1; next->name; ++next) {



            duplicated = strcmp(o->name, next->name) == 0;
            assert(!duplicated);
        }

        if (o->name[0] == '\0') {
            assert(unknown == ((void*)0));
            unknown = o;
            assert(unknown->valtype == 0 || unknown->valtype == '-');
        }
    }
    return prog;
}
