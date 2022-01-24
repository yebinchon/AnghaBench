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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  ufs2_daddr_t ;
struct data_blk {int db_size; int /*<<< orphan*/ * db_buf; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 struct data_blk* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  disk ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fs ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint8_t *
FUNC6(ufs2_daddr_t blk, int size)
{
	struct data_blk *dblk;

	dblk = FUNC1(blk);
	/*
	 * I doubt size mismatches can happen in practice but it is trivial
	 * to handle.
	 */
	if (size != dblk->db_size) {
		if (dblk->db_buf)
			FUNC4(dblk->db_buf);
		dblk->db_buf = FUNC3(size);
		dblk->db_size = size;
		if (FUNC0(&disk, FUNC5(fs, blk), dblk->db_buf, size) == -1)
			FUNC2("Failed to read data block %jd\n", blk);
	}
	return (dblk->db_buf);
}