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
struct idr {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOSPC ; 
 int INT_MAX ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int FUNC0 (struct idr*,void*,int,int*) ; 
 int FUNC1 (struct idr*,void*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct idr*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static int
FUNC5(struct idr *idr, void *ptr, int start, int end)
{
	int max = end > 0 ? end - 1 : INT_MAX;
	int error;
	int id;

	FUNC3(&idr->lock, MA_OWNED);

	if (FUNC4(start < 0))
		return (-EINVAL);
	if (FUNC4(max < start))
		return (-ENOSPC);

	if (start == 0)
		error = FUNC1(idr, ptr, &id);
	else
		error = FUNC0(idr, ptr, start, &id);

	if (FUNC4(error < 0))
		return (error);
	if (FUNC4(id > max)) {
		FUNC2(idr, id);
		return (-ENOSPC);
	}
	return (id);
}