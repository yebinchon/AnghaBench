
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int id; scalar_t__ opt_type; int ** value; } ;
struct TYPE_4__ {char* name; } ;


 int fprintf (int ,char*,...) ;
 int getopt_long (int,char**,int ,TYPE_1__*,int*) ;
 TYPE_2__* long_extras ;
 TYPE_1__* long_options ;
 size_t nargs ;
 int * optarg ;
 int print_help () ;
 scalar_t__ required_option ;
 int short_options ;
 int stderr ;

__attribute__((used)) static int parse_args(int argc, char** argv) {
    int option_index = 0;
    int c;

    while (1) {
        c = getopt_long(argc, argv, short_options, long_options, &option_index);
        if (c == -1)
            break;

        int found = 0;
        for (size_t i = 0; i < nargs; ++i) {
            if (c == long_extras[i].id && long_extras[i].value != ((void*)0)) {
                *long_extras[i].value = optarg;
                found = 1;
                break;
            }
        }
        if (found)
            continue;

        switch (c) {
            case 'h':
            case '?':
            default:
                print_help();
                return 1;
        }
    }

    int bad = 0;
    for (size_t i = 0; i < nargs; ++i) {
        if (long_extras[i].opt_type != required_option)
            continue;
        if (long_extras[i].value == ((void*)0))
            continue;
        if (*long_extras[i].value != ((void*)0))
            continue;
        fprintf(
            stderr,
            "--%s is a required argument but is not set\n",
            long_options[i].name);
        bad = 1;
    }
    if (bad) {
        fprintf(stderr, "\n");
        print_help();
        return 1;
    }

    return 0;
}
