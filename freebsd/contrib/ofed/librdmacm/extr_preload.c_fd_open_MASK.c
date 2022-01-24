#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct fd_info {int dupfd; int /*<<< orphan*/  refcnt; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* close ) (int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 struct fd_info* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct fd_info*) ; 
 int /*<<< orphan*/  idm ; 
 int FUNC4 (int /*<<< orphan*/ *,int,struct fd_info*) ; 
 int /*<<< orphan*/  mut ; 
 int FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_1__ real ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(void)
{
	struct fd_info *fdi;
	int ret, index;

	fdi = FUNC2(1, sizeof(*fdi));
	if (!fdi)
		return FUNC0(ENOMEM);

	index = FUNC5("/dev/null", O_RDONLY);
	if (index < 0) {
		ret = index;
		goto err1;
	}

	fdi->dupfd = -1;
	FUNC1(&fdi->refcnt, 1);
	FUNC6(&mut);
	ret = FUNC4(&idm, index, fdi);
	FUNC7(&mut);
	if (ret < 0)
		goto err2;

	return index;

err2:
	real.close(index);
err1:
	FUNC3(fdi);
	return ret;
}