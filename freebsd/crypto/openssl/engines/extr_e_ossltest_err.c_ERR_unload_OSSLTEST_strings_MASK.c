#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OSSLTEST_str_functs ; 
 int /*<<< orphan*/  OSSLTEST_str_reasons ; 
 scalar_t__ error_loaded ; 
 int /*<<< orphan*/  lib_code ; 

__attribute__((used)) static void FUNC1(void)
{
    if (error_loaded) {
#ifndef OPENSSL_NO_ERR
        FUNC0(lib_code, OSSLTEST_str_functs);
        FUNC0(lib_code, OSSLTEST_str_reasons);
#endif
        error_loaded = 0;
    }
}