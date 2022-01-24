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
typedef  int /*<<< orphan*/  ldns_status ;
struct TYPE_3__ {char const* name; } ;
typedef  TYPE_1__ ldns_lookup_table ;

/* Variables and functions */
 int /*<<< orphan*/  ldns_error_str ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

const char *
FUNC1(ldns_status err)
{
        ldns_lookup_table *lt;

        lt = FUNC0(ldns_error_str, err);

        if (lt) {
                return lt->name;
        }
        return NULL;
}