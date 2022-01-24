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
typedef  int /*<<< orphan*/  u_int32_t ;
typedef  int /*<<< orphan*/  tbl ;
struct pfr_table {int pfrt_flags; int /*<<< orphan*/  pfrt_anchor; int /*<<< orphan*/  pfrt_name; } ;
struct pfr_buffer {int /*<<< orphan*/  pfrb_size; int /*<<< orphan*/  pfrb_caddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  PFR_FLAG_ADDRSTOO ; 
 int /*<<< orphan*/  FUNC0 (struct pfr_table*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int FUNC2 (struct pfr_table*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,char const*,int) ; 

int
FUNC4(char *name, int flags, int addrs, const char *anchor,
    struct pfr_buffer *ab, u_int32_t ticket)
{
	struct pfr_table tbl;

	FUNC0(&tbl, sizeof(tbl));
	if (FUNC3(tbl.pfrt_name, name, sizeof(tbl.pfrt_name)) >=
	    sizeof(tbl.pfrt_name) || FUNC3(tbl.pfrt_anchor, anchor,
	    sizeof(tbl.pfrt_anchor)) >= sizeof(tbl.pfrt_anchor))
		FUNC1(1, "pfctl_define_table: strlcpy");
	tbl.pfrt_flags = flags;

	return FUNC2(&tbl, ab->pfrb_caddr, ab->pfrb_size, NULL,
	    NULL, ticket, addrs ? PFR_FLAG_ADDRSTOO : 0);
}