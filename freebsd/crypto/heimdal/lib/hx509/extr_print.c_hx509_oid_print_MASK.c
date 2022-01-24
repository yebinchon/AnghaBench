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
typedef  int /*<<< orphan*/  hx509_vprint_func ;
typedef  int /*<<< orphan*/  heim_oid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,char**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*,char*,char*) ; 

void
FUNC3(const heim_oid *oid, hx509_vprint_func func, void *ctx)
{
    char *str;
    FUNC1(oid, &str);
    FUNC2(func, ctx, "%s", str);
    FUNC0(str);
}