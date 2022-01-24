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
typedef  int /*<<< orphan*/  trans ;
struct pfr_buffer {int dummy; } ;
struct pfioc_trans_e {int rs_num; int /*<<< orphan*/  anchor; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pfioc_trans_e*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int FUNC2 (struct pfr_buffer*,struct pfioc_trans_e*) ; 
 int FUNC3 (int /*<<< orphan*/ ,char const*,int) ; 

int
FUNC4(struct pfr_buffer *buf, int rs_num, const char *anchor)
{
	struct pfioc_trans_e trans;

	FUNC0(&trans, sizeof(trans));
	trans.rs_num = rs_num;
	if (FUNC3(trans.anchor, anchor,
	    sizeof(trans.anchor)) >= sizeof(trans.anchor))
		FUNC1(1, "pfctl_add_trans: strlcpy");

	return FUNC2(buf, &trans);
}