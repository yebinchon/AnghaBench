#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  error; } ;

/* Variables and functions */
 TYPE_1__* EC_str_functs ; 
 TYPE_1__* EC_str_reasons ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

int FUNC2(void)
{
#ifndef OPENSSL_NO_ERR
    if (FUNC0(EC_str_functs[0].error) == NULL) {
        FUNC1(EC_str_functs);
        FUNC1(EC_str_reasons);
    }
#endif
    return 1;
}