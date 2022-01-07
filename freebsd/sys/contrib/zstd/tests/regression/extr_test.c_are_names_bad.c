
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {char* name; } ;
struct TYPE_5__ {char* name; } ;
struct TYPE_4__ {char* name; } ;


 TYPE_3__** configs ;
 TYPE_2__** data ;
 int fprintf (int ,char*,char*) ;
 scalar_t__ is_name_bad (char*) ;
 TYPE_1__** methods ;
 int stderr ;

__attribute__((used)) static int are_names_bad() {
    for (size_t method = 0; methods[method] != ((void*)0); ++method)
        if (is_name_bad(methods[method]->name)) {
            fprintf(stderr, "method name %s is bad\n", methods[method]->name);
            return 1;
        }
    for (size_t datum = 0; data[datum] != ((void*)0); ++datum)
        if (is_name_bad(data[datum]->name)) {
            fprintf(stderr, "data name %s is bad\n", data[datum]->name);
            return 1;
        }
    for (size_t config = 0; configs[config] != ((void*)0); ++config)
        if (is_name_bad(configs[config]->name)) {
            fprintf(stderr, "config name %s is bad\n", configs[config]->name);
            return 1;
        }
    return 0;
}
