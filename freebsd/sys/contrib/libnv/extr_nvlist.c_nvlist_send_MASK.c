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
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 (int,void*,size_t) ; 
 int FUNC4 (int,int*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int* FUNC6 (int /*<<< orphan*/  const*,size_t*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/  const*) ; 
 void* FUNC8 (int /*<<< orphan*/  const*,scalar_t__*,size_t*) ; 

int
FUNC9(int sock, const nvlist_t *nvl)
{
	size_t datasize, nfds;
	int *fds;
	void *data;
	int64_t fdidx;
	int ret;

	if (FUNC7(nvl) != 0) {
		FUNC2(FUNC7(nvl));
		return (-1);
	}

	fds = FUNC6(nvl, &nfds);
	if (fds == NULL)
		return (-1);

	ret = -1;
	fdidx = 0;

	data = FUNC8(nvl, &fdidx, &datasize);
	if (data == NULL)
		goto out;

	if (FUNC3(sock, data, datasize) == -1)
		goto out;

	if (nfds > 0) {
		if (FUNC4(sock, fds, nfds) == -1)
			goto out;
	}

	ret = 0;
out:
	FUNC1();
	FUNC5(fds);
	FUNC5(data);
	FUNC0();
	return (ret);
}