#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int ;
struct TYPE_4__ {int bw_percent; } ;
struct TYPE_3__ {int bw_percent; } ;
struct node_hfsc_sc {TYPE_2__ m2; TYPE_1__ m1; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 char* FUNC1 (double) ; 

void
FUNC2(const char *scname, u_int m1, u_int d, u_int m2,
    const struct node_hfsc_sc *sc)
{
	FUNC0(" %s", scname);

	if (d != 0) {
		FUNC0("(");
		if (sc != NULL && sc->m1.bw_percent > 0)
			FUNC0("%u%%", sc->m1.bw_percent);
		else
			FUNC0("%s", FUNC1((double)m1));
		FUNC0(" %u", d);
	}

	if (sc != NULL && sc->m2.bw_percent > 0)
		FUNC0(" %u%%", sc->m2.bw_percent);
	else
		FUNC0(" %s", FUNC1((double)m2));

	if (d != 0)
		FUNC0(")");
}