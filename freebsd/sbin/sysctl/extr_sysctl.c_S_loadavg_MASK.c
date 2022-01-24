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
struct loadavg {scalar_t__ fscale; scalar_t__* ldavg; } ;

/* Variables and functions */
 scalar_t__ hflag ; 
 int /*<<< orphan*/  FUNC0 (char*,double,double,double) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,int) ; 

__attribute__((used)) static int
FUNC2(size_t l2, void *p)
{
	struct loadavg *tv = (struct loadavg*)p;

	if (l2 != sizeof(*tv)) {
		FUNC1("S_loadavg %zu != %zu", l2, sizeof(*tv));
		return (1);
	}
	FUNC0(hflag ? "{ %'.2f %'.2f %'.2f }" : "{ %.2f %.2f %.2f }",
		(double)tv->ldavg[0]/(double)tv->fscale,
		(double)tv->ldavg[1]/(double)tv->fscale,
		(double)tv->ldavg[2]/(double)tv->fscale);
	return (0);
}