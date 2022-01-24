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
struct ena_com_dev {int /*<<< orphan*/  rss; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ena_com_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct ena_com_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct ena_com_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 

void FUNC4(struct ena_com_dev *ena_dev)
{
	FUNC2(ena_dev);
	FUNC1(ena_dev);
	FUNC0(ena_dev);

	FUNC3(&ena_dev->rss, 0x0, sizeof(ena_dev->rss));
}