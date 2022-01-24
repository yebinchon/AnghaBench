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
typedef  int /*<<< orphan*/  bool_t ;
struct TYPE_4__ {scalar_t__ in_finger; scalar_t__ in_boundry; scalar_t__ nonblock; } ;
typedef  TYPE_1__ RECSTREAM ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,size_t) ; 

__attribute__((used)) static bool_t  /* knows nothing about records!  Only about input buffers */
FUNC3(RECSTREAM *rstrm, char *addr, int len)
{
	size_t current;

	if (rstrm->nonblock) {
		if (len > (int)(rstrm->in_boundry - rstrm->in_finger))
			return FALSE;
		FUNC1(addr, rstrm->in_finger, (size_t)len);
		rstrm->in_finger += len;
		return TRUE;
	}

	while (len > 0) {
		current = (size_t)((long)rstrm->in_boundry -
		    (long)rstrm->in_finger);
		if (current == 0) {
			if (! FUNC0(rstrm))
				return (FALSE);
			continue;
		}
		current = (len < current) ? len : current;
		FUNC2(addr, rstrm->in_finger, current);
		rstrm->in_finger += current;
		addr += current;
		len -= current;
	}
	return (TRUE);
}