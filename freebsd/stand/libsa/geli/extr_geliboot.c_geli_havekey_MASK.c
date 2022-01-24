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
typedef  int /*<<< orphan*/  u_char ;
struct geli_dev {int dummy; } ;
typedef  int /*<<< orphan*/  mkey ;

/* Variables and functions */
 int ENOENT ; 
 int G_ELI_DATAIVKEYLEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (struct geli_dev*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct geli_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC3(struct geli_dev *gdev)
{
	u_char mkey[G_ELI_DATAIVKEYLEN];
	int err;

	err = ENOENT;
	if (FUNC1(gdev, mkey) == 0) {
		if (FUNC2(gdev, NULL, mkey) == 0)
			err = 0;
		FUNC0(mkey, sizeof(mkey));
	}
	return (err);
}