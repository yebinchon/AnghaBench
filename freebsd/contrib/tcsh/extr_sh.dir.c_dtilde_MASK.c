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
struct directory {int /*<<< orphan*/  di_name; struct directory* di_prev; } ;

/* Variables and functions */
 int /*<<< orphan*/  STRNULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct directory* dcwd ; 
 struct directory dhead ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void
FUNC2(void)
{
    struct directory *d = dcwd;

    do {
	if (d == &dhead)
	    continue;
	d->di_name = FUNC0(d->di_name, STRNULL);
    } while ((d = d->di_prev) != dcwd);

    FUNC1(dcwd->di_name);
}