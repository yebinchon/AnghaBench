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
struct _memstream {int dummy; } ;
struct _citrus_db_header_x {int /*<<< orphan*/  dhx_num_entries; } ;
struct _citrus_db {int /*<<< orphan*/  db_region; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct _memstream*,int /*<<< orphan*/ *) ; 
 struct _citrus_db_header_x* FUNC1 (struct _memstream*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

int
FUNC3(struct _citrus_db *db)
{
	struct _citrus_db_header_x *dhx;
	struct _memstream ms;

	FUNC0(&ms, &db->db_region);

	dhx = FUNC1(&ms, NULL, sizeof(*dhx));
	return ((int)FUNC2(dhx->dhx_num_entries));
}