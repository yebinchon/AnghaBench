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
struct varent {int dummy; } ;
typedef  int /*<<< orphan*/  Char ;

/* Variables and functions */
 struct varent* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  shvhed ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct varent*) ; 

void
FUNC3(Char *var)
{
    struct varent *vp;

    if ((vp = FUNC0(var, &shvhed)) == 0)
	FUNC1(var);
    FUNC2(vp);
}