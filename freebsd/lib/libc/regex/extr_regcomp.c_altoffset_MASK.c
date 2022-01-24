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
typedef  int sop ;

/* Variables and functions */
#define  OANY 138 
#define  OANYOF 137 
#define  OBOW 136 
#define  OCHAR 135 
#define  OCH_ 134 
#define  OEOW 133 
#define  OLPAREN 132 
#define  OOR1 131 
#define  OOR2 130 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
#define  OQUEST_ 129 
#define  ORPAREN 128 
 scalar_t__ O_CH ; 
 scalar_t__ O_QUEST ; 

__attribute__((used)) static int
FUNC2(sop *scan, int offset)
{
	int largest;
	int try;
	sop s;

	/* If we gave up already on offsets, return */
	if (offset == -1)
		return -1;

	largest = 0;
	try = 0;
	s = *scan++;
	while (FUNC0(s) != (sop)O_QUEST && FUNC0(s) != (sop)O_CH) {
		switch (FUNC0(s)) {
		case OOR1:
			if (try > largest)
				largest = try;
			try = 0;
			break;
		case OQUEST_:
		case OCH_:
			try = FUNC2(scan, try);
			if (try == -1)
				return -1;
			scan--;
			do {
				scan += FUNC1(s);
				s = *scan;
				if (FUNC0(s) != (sop)O_QUEST &&
				    FUNC0(s) != (sop)O_CH && FUNC0(s) != (sop)OOR2)
					return -1;
			} while (FUNC0(s) != (sop)O_QUEST && FUNC0(s) != (sop)O_CH);
			/* We must skip to the next position, or we'll
			 * leave altoffset() too early.
			 */
			scan++;
			break;
		case OANYOF:
		case OCHAR:
		case OANY:
			try++;
		case OBOW:
		case OEOW:
		case OLPAREN:
		case ORPAREN:
		case OOR2:
			break;
		default:
			try = -1;
			break;
		}
		if (try == -1)
			return -1;
		s = *scan++;
	}

	if (try > largest)
		largest = try;

	return largest+offset;
}