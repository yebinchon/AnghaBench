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
 int /*<<< orphan*/  FUNC0 () ; 

__attribute__((used)) static __inline int
FUNC1(int cs)
{

	switch (cs) {
	case 0:
		/*FALLTHROUGH*/
	case 1:
		/*FALLTHROUGH*/
	case 2:
		return (1 << cs);
	case 3:
		FUNC0();
		/*NOTREACHED*/
	}
	return (0);
}