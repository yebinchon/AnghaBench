#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char* name; } ;
typedef  TYPE_1__ X509_VERIFY_PARAM ;

/* Variables and functions */
 TYPE_1__ const* FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  default_table ; 
 int /*<<< orphan*/ * param_table ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__ const* FUNC3 (int /*<<< orphan*/ *,int) ; 

const X509_VERIFY_PARAM *FUNC4(const char *name)
{
    int idx;
    X509_VERIFY_PARAM pm;

    pm.name = (char *)name;
    if (param_table != NULL) {
        idx = FUNC2(param_table, &pm);
        if (idx >= 0)
            return FUNC3(param_table, idx);
    }
    return FUNC0(&pm, default_table, FUNC1(default_table));
}