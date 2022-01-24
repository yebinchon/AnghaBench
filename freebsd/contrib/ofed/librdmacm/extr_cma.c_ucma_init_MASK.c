#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ibv_device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  guid; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int,int) ; 
 int FUNC2 () ; 
 TYPE_1__* cma_dev_array ; 
 int cma_dev_cnt ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ibv_device**) ; 
 int /*<<< orphan*/  FUNC6 (struct ibv_device*) ; 
 struct ibv_device** FUNC7 (int*) ; 
 int /*<<< orphan*/  idm_lock ; 
 int /*<<< orphan*/  mut ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 () ; 

int FUNC11(void)
{
	struct ibv_device **dev_list = NULL;
	int i, ret, dev_cnt;

	/* Quick check without lock to see if we're already initialized */
	if (cma_dev_cnt)
		return 0;

	FUNC8(&mut);
	if (cma_dev_cnt) {
		FUNC9(&mut);
		return 0;
	}

	FUNC4(&idm_lock);
	ret = FUNC2();
	if (ret)
		goto err1;

	dev_list = FUNC7(&dev_cnt);
	if (!dev_list) {
		ret = FUNC0(ENODEV);
		goto err1;
	}

	if (!dev_cnt) {
		ret = FUNC0(ENODEV);
		goto err2;
	}

	cma_dev_array = FUNC1(dev_cnt, sizeof(*cma_dev_array));
	if (!cma_dev_array) {
		ret = FUNC0(ENOMEM);
		goto err2;
	}

	for (i = 0; dev_list[i]; i++)
		cma_dev_array[i].guid = FUNC6(dev_list[i]);

	cma_dev_cnt = dev_cnt;
	FUNC10();
	FUNC9(&mut);
	FUNC5(dev_list);
	return 0;

err2:
	FUNC5(dev_list);
err1:
	FUNC3(&idm_lock);
	FUNC9(&mut);
	return ret;
}