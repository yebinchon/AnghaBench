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
 int /*<<< orphan*/  FUNC0 (double const,double const) ; 
#define  INFINITY 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 double const FUNC2 (double const,double const) ; 
 scalar_t__ FUNC3 (double const) ; 
 unsigned int FUNC4 (double const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(void)
{
	static const double vals[] = {
		0.0,
		-0.0,
		42.0,
		-42.0,
		INFINITY,
		-INFINITY,
	};

	unsigned i;

	for (i = 0; i < FUNC4(vals); i++) {
		if (FUNC3(vals[i])) {
			FUNC1(FUNC5(FUNC0(-INFINITY, vals[i])),
			    FUNC0(0.0, FUNC2(INFINITY, vals[i])));
			FUNC1(FUNC5(FUNC0(INFINITY, vals[i])),
			    FUNC0(INFINITY, FUNC2(0.0, vals[i])));
		}
		FUNC1(FUNC5(FUNC0(vals[i], INFINITY)),
		    FUNC0(INFINITY, INFINITY));
		FUNC1(FUNC5(FUNC0(vals[i], -INFINITY)),
		    FUNC0(INFINITY, -INFINITY));
	}
}