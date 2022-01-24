#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  result_t ;
typedef  int /*<<< orphan*/  method_state_t ;
struct TYPE_12__ {char* name; int /*<<< orphan*/  (* destroy ) (int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* compress ) (int /*<<< orphan*/ *,TYPE_1__*) ;int /*<<< orphan*/ * (* create ) (TYPE_2__*) ;} ;
struct TYPE_11__ {scalar_t__ total_size; } ;
struct TYPE_10__ {char* name; } ;
struct TYPE_9__ {char* name; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,TYPE_2__*) ; 
 TYPE_1__** configs ; 
 TYPE_2__** data ; 
 int /*<<< orphan*/ * g_config ; 
 int /*<<< orphan*/ * g_data ; 
 int /*<<< orphan*/ * g_method ; 
 TYPE_4__** methods ; 
 TYPE_3__ FUNC1 (int /*<<< orphan*/  const) ; 
 unsigned long long FUNC2 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC5 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,...) ; 

__attribute__((used)) static int FUNC12(FILE* results) {
    FUNC10(results, "Data", "Config", "Method");
    FUNC11(results, "Total compressed size\n");
    for (size_t method = 0; methods[method] != NULL; ++method) {
        if (g_method != NULL && FUNC5(methods[method]->name, g_method))
            continue;
        for (size_t datum = 0; data[datum] != NULL; ++datum) {
            if (g_data != NULL && FUNC5(data[datum]->name, g_data))
                continue;
            /* Create the state common to all configs */
            method_state_t* state = methods[method]->create(data[datum]);
            for (size_t config = 0; configs[config] != NULL; ++config) {
                if (g_config != NULL && FUNC5(configs[config]->name, g_config))
                    continue;
                if (FUNC0(configs[config], data[datum]))
                    continue;
                /* Print the result for the (method, data, config) tuple. */
                result_t const result =
                    methods[method]->compress(state, configs[config]);
                if (FUNC4(result))
                    continue;
                FUNC10(
                    results,
                    data[datum]->name,
                    configs[config]->name,
                    methods[method]->name);
                if (FUNC3(result)) {
                    FUNC11(results, "%s\n", FUNC2(result));
                } else {
                    FUNC11(
                        results,
                        "%llu\n",
                        (unsigned long long)FUNC1(result).total_size);
                }
                FUNC9(results);
            }
            methods[method]->destroy(state);
        }
    }
    return 0;
}