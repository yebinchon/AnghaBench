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
typedef  int /*<<< orphan*/  X509_VERIFY_PARAM ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* default_table ; 
 int /*<<< orphan*/  param_table ; 
 int /*<<< orphan*/  const* FUNC1 (int /*<<< orphan*/ ,int) ; 

const X509_VERIFY_PARAM *FUNC2(int id)
{
    int num = FUNC0(default_table);
    if (id < num)
        return default_table + id;
    return FUNC1(param_table, id - num);
}