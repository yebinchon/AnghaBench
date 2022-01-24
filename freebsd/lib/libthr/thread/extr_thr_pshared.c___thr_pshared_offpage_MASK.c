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
struct pthread {int dummy; } ;

/* Variables and functions */
 void* MAP_FAILED ; 
 int /*<<< orphan*/  MAP_SHARED ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  UMTX_OP_SHM ; 
 int /*<<< orphan*/  UMTX_SHM_CREAT ; 
 int /*<<< orphan*/  UMTX_SHM_LOOKUP ; 
 struct pthread* FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*,void*) ; 
 int FUNC5 (void*,void**) ; 
 void* FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (struct pthread*) ; 
 int /*<<< orphan*/  FUNC8 (struct pthread*) ; 
 int /*<<< orphan*/  FUNC9 (struct pthread*) ; 

void *
FUNC10(void *key, int doalloc)
{
	struct pthread *curthread;
	void *res;
	int fd, ins_done;

	curthread = FUNC0();
	FUNC7(curthread);
	res = FUNC6(key);
	FUNC8(curthread);
	if (res != NULL)
		return (res);
	fd = FUNC1(NULL, UMTX_OP_SHM, doalloc ? UMTX_SHM_CREAT :
	    UMTX_SHM_LOOKUP, key, NULL);
	if (fd == -1)
		return (NULL);
	res = FUNC3(NULL, PAGE_SIZE, PROT_READ | PROT_WRITE, MAP_SHARED, fd, 0);
	FUNC2(fd);
	if (res == MAP_FAILED)
		return (NULL);
	FUNC9(curthread);
	ins_done = FUNC5(key, &res);
	FUNC8(curthread);
	if (!ins_done) {
		FUNC4(key, res);
		res = NULL;
	}
	return (res);
}