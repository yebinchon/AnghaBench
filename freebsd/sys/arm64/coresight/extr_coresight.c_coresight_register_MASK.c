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
struct coresight_device {int /*<<< orphan*/  dev_type; int /*<<< orphan*/  pdata; int /*<<< orphan*/  node; int /*<<< orphan*/  dev; } ;
struct coresight_desc {int /*<<< orphan*/  dev_type; int /*<<< orphan*/  pdata; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_CORESIGHT ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct coresight_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cs_devs ; 
 int /*<<< orphan*/  cs_mtx ; 
 int /*<<< orphan*/  link ; 
 struct coresight_device* FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int
FUNC5(struct coresight_desc *desc)
{
	struct coresight_device *cs_dev;

	cs_dev = FUNC1(sizeof(struct coresight_device),
	    M_CORESIGHT, M_WAITOK | M_ZERO);
	cs_dev->dev = desc->dev;
	cs_dev->node = FUNC4(desc->dev);
	cs_dev->pdata = desc->pdata;
	cs_dev->dev_type = desc->dev_type;

	FUNC2(&cs_mtx);
	FUNC0(&cs_devs, cs_dev, link);
	FUNC3(&cs_mtx);

	return (0);
}