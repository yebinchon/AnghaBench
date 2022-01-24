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
typedef  int /*<<< orphan*/  u16 ;
struct ena_com_dev {int /*<<< orphan*/  rss; } ;

/* Variables and functions */
 int FUNC0 (struct ena_com_dev*) ; 
 int FUNC1 (struct ena_com_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct ena_com_dev*) ; 
 int FUNC3 (struct ena_com_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ena_com_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC6 (int) ; 

int FUNC7(struct ena_com_dev *ena_dev, u16 indr_tbl_log_size)
{
	int rc;

	FUNC5(&ena_dev->rss, 0x0, sizeof(ena_dev->rss));

	rc = FUNC3(ena_dev, indr_tbl_log_size);
	if (FUNC6(rc))
		goto err_indr_tbl;

	rc = FUNC1(ena_dev);
	if (FUNC6(rc))
		goto err_hash_key;

	rc = FUNC0(ena_dev);
	if (FUNC6(rc))
		goto err_hash_ctrl;

	return 0;

err_hash_ctrl:
	FUNC2(ena_dev);
err_hash_key:
	FUNC4(ena_dev);
err_indr_tbl:

	return rc;
}