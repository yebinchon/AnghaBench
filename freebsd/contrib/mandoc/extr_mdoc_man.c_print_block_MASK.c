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
 int MMAN_Bk_susp ; 
 int MMAN_PD ; 
 int MMAN_PP ; 
 int MMAN_br ; 
 int MMAN_nl ; 
 int MMAN_sp ; 
 int outflags ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 

__attribute__((used)) static void
FUNC2(const char *s, int newflags)
{

	outflags &= ~MMAN_PP;
	if (MMAN_sp & outflags) {
		outflags &= ~(MMAN_sp | MMAN_br);
		if (MMAN_PD & outflags) {
			FUNC0(".PD", 0);
			outflags &= ~MMAN_PD;
		}
	} else if (! (MMAN_PD & outflags))
		FUNC0(".PD 0", MMAN_PD);
	outflags |= MMAN_nl;
	FUNC1(s);
	outflags |= MMAN_Bk_susp | newflags;
}