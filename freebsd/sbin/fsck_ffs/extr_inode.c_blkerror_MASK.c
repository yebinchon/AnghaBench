#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  scalar_t__ ufs2_daddr_t ;
typedef  int /*<<< orphan*/  intmax_t ;
typedef  scalar_t__ ino_t ;
struct TYPE_2__ {int ino_state; } ;

/* Variables and functions */
#define  DCLEAR 133 
#define  DSTATE 132 
#define  DZLINK 131 
 int /*<<< orphan*/  EEXIT ; 
#define  FCLEAR 130 
#define  FSTATE 129 
#define  FZLINK 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 TYPE_1__* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

void
FUNC4(ino_t ino, const char *type, ufs2_daddr_t blk)
{

	FUNC2("%jd %s I=%ju", (intmax_t)blk, type, (uintmax_t)ino);
	FUNC3("\n");
	switch (FUNC1(ino)->ino_state) {

	case FSTATE:
	case FZLINK:
		FUNC1(ino)->ino_state = FCLEAR;
		return;

	case DSTATE:
	case DZLINK:
		FUNC1(ino)->ino_state = DCLEAR;
		return;

	case FCLEAR:
	case DCLEAR:
		return;

	default:
		FUNC0(EEXIT, "BAD STATE %d TO BLKERR", FUNC1(ino)->ino_state);
		/* NOTREACHED */
	}
}