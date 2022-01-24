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
 int IB_PORT_CAPMASK2_F ; 
 int IB_PORT_FIRST_F ; 
 int IB_PORT_LAST_F ; 
 int IB_PORT_LINK_SPEED_EXT_LAST_F ; 
 int IB_PORT_MKEY_F ; 
 int /*<<< orphan*/  NOT_DISPLAYED_STR ; 
 int /*<<< orphan*/  FUNC0 (void*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 scalar_t__ show_keys ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int,int,int /*<<< orphan*/ ) ; 

void FUNC4(void *pi, int tabs)
{
	int field, i;
	char val[64];
	char buf[1024];

	for (field = IB_PORT_FIRST_F; field < IB_PORT_LAST_F; field++) {
		for (i=0;i<tabs;i++)
			FUNC2("\t");
		if (field == IB_PORT_MKEY_F && show_keys == 0) {
			FUNC3(buf, 1024, field, 32, NOT_DISPLAYED_STR);
		} else {
			FUNC0(pi, field, val);
			if (!FUNC1(field, buf, 1024, val))
				return;
		}
		FUNC2("%s\n", buf);
	}

	for (field = IB_PORT_CAPMASK2_F;
	     field < IB_PORT_LINK_SPEED_EXT_LAST_F; field++) {
		for (i=0;i<tabs;i++)
			FUNC2("\t");
		FUNC0(pi, field, val);
		if (!FUNC1(field, buf, 1024, val))
			return;
		FUNC2("%s\n", buf);
	}
}