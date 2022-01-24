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
 scalar_t__ dst_addr ; 
 int /*<<< orphan*/  end ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int iterations ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  start ; 
 int FUNC4 () ; 
 int transfer_count ; 
 int /*<<< orphan*/  transfer_size ; 

__attribute__((used)) static int FUNC5(void)
{
	int ret, i, t;

	ret = FUNC4();
	if (ret)
		goto out;

	FUNC0(&start, NULL);
	for (i = 0; i < iterations; i++) {
		for (t = 0; t < transfer_count; t++) {
			ret = dst_addr ? FUNC2(transfer_size) :
					 FUNC1(transfer_size);
			if (ret)
				goto out;
		}

		for (t = 0; t < transfer_count; t++) {
			ret = dst_addr ? FUNC1(transfer_size) :
					 FUNC2(transfer_size);
			if (ret)
				goto out;
		}
	}
	FUNC0(&end, NULL);
	FUNC3();
	ret = 0;

out:
	return ret;
}