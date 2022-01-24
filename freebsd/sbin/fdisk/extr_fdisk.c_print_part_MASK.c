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
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  int /*<<< orphan*/  u_long ;
typedef  int u_int64_t ;
struct dos_partition {int dp_size; int dp_typ; int dp_shd; int dp_ehd; int /*<<< orphan*/  dp_esect; int /*<<< orphan*/  dp_ecyl; int /*<<< orphan*/  dp_ssect; int /*<<< orphan*/  dp_scyl; int /*<<< orphan*/  dp_flag; scalar_t__ dp_start; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACTIVE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dos_partition const*,int /*<<< orphan*/ *,int) ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/  mtpart ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int secsize ; 

__attribute__((used)) static void
FUNC5(const struct dos_partition *partp)
{
	u_int64_t part_mb;

	if (!FUNC2(partp, &mtpart, sizeof (struct dos_partition))) {
		FUNC4("<UNUSED>\n");
		return;
	}
	/*
	 * Be careful not to overflow.
	 */
	part_mb = partp->dp_size;
	part_mb *= secsize;
	part_mb /= (1024 * 1024);
	FUNC4("sysid %d (%#04x),(%s)\n", partp->dp_typ, partp->dp_typ,
	    FUNC3(partp->dp_typ));
	FUNC4("    start %lu, size %lu (%ju Meg), flag %x%s\n",
		(u_long)partp->dp_start,
		(u_long)partp->dp_size,
		(uintmax_t)part_mb,
		partp->dp_flag,
		partp->dp_flag == ACTIVE ? " (active)" : "");
	FUNC4("\tbeg: cyl %d/ head %d/ sector %d;\n\tend: cyl %d/ head %d/ sector %d\n"
		,FUNC0(partp->dp_scyl, partp->dp_ssect)
		,partp->dp_shd
		,FUNC1(partp->dp_ssect)
		,FUNC0(partp->dp_ecyl, partp->dp_esect)
		,partp->dp_ehd
		,FUNC1(partp->dp_esect));
}