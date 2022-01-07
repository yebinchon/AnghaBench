
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int result_t ;
typedef int method_state_t ;
struct TYPE_12__ {char* name; int (* destroy ) (int *) ;int (* compress ) (int *,TYPE_1__*) ;int * (* create ) (TYPE_2__*) ;} ;
struct TYPE_11__ {scalar_t__ total_size; } ;
struct TYPE_10__ {char* name; } ;
struct TYPE_9__ {char* name; } ;
typedef int FILE ;


 scalar_t__ config_skip_data (TYPE_1__*,TYPE_2__*) ;
 TYPE_1__** configs ;
 TYPE_2__** data ;
 int * g_config ;
 int * g_data ;
 int * g_method ;
 TYPE_4__** methods ;
 TYPE_3__ result_get_data (int const) ;
 unsigned long long result_get_error_string (int const) ;
 scalar_t__ result_is_error (int const) ;
 scalar_t__ result_is_skip (int const) ;
 scalar_t__ strcmp (char*,int *) ;
 int * stub1 (TYPE_2__*) ;
 int stub2 (int *,TYPE_1__*) ;
 int stub3 (int *) ;
 int tflush (int *) ;
 int tprint_names (int *,char*,char*,char*) ;
 int tprintf (int *,char*,...) ;

__attribute__((used)) static int run_all(FILE* results) {
    tprint_names(results, "Data", "Config", "Method");
    tprintf(results, "Total compressed size\n");
    for (size_t method = 0; methods[method] != ((void*)0); ++method) {
        if (g_method != ((void*)0) && strcmp(methods[method]->name, g_method))
            continue;
        for (size_t datum = 0; data[datum] != ((void*)0); ++datum) {
            if (g_data != ((void*)0) && strcmp(data[datum]->name, g_data))
                continue;

            method_state_t* state = methods[method]->create(data[datum]);
            for (size_t config = 0; configs[config] != ((void*)0); ++config) {
                if (g_config != ((void*)0) && strcmp(configs[config]->name, g_config))
                    continue;
                if (config_skip_data(configs[config], data[datum]))
                    continue;

                result_t const result =
                    methods[method]->compress(state, configs[config]);
                if (result_is_skip(result))
                    continue;
                tprint_names(
                    results,
                    data[datum]->name,
                    configs[config]->name,
                    methods[method]->name);
                if (result_is_error(result)) {
                    tprintf(results, "%s\n", result_get_error_string(result));
                } else {
                    tprintf(
                        results,
                        "%llu\n",
                        (unsigned long long)result_get_data(result).total_size);
                }
                tflush(results);
            }
            methods[method]->destroy(state);
        }
    }
    return 0;
}
