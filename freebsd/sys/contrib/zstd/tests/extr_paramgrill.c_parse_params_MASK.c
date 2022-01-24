#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t varInds_t ;
struct TYPE_3__ {int /*<<< orphan*/ * vals; } ;
typedef  TYPE_1__ paramValues_t ;

/* Variables and functions */
 size_t NUM_PARAMS ; 
 int /*<<< orphan*/ * g_paramNames ; 
 int /*<<< orphan*/ * g_shortParamNames ; 
 scalar_t__ FUNC0 (char const**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const**) ; 

__attribute__((used)) static int FUNC2(const char** argptr, paramValues_t* pv) {
    int matched = 0;
    const char* argOrig = *argptr;
    varInds_t v;
    for(v = 0; v < NUM_PARAMS; v++) {
        if ( FUNC0(argptr,g_shortParamNames[v])
          || FUNC0(argptr, g_paramNames[v]) ) {
            if(**argptr == '=') {
                (*argptr)++;
                pv->vals[v] = FUNC1(argptr);
                matched = 1;
                break;
            }
        }
        /* reset and try again */
        *argptr = argOrig;
    }
    return matched;
}