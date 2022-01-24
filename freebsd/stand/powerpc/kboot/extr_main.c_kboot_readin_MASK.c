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
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 size_t PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,scalar_t__) ; 
 void* FUNC2 (size_t) ; 
 size_t FUNC3 (size_t,size_t const) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int const,void*,size_t) ; 

ssize_t
FUNC6(const int fd, vm_offset_t dest, const size_t len)
{
	void            *buf;
	size_t          resid, chunk, get;
	ssize_t         got;
	vm_offset_t     p;

	p = dest;

	chunk = FUNC3(PAGE_SIZE, len);
	buf = FUNC2(chunk);
	if (buf == NULL) {
		FUNC4("kboot_readin: buf malloc failed\n");
		return (0);
	}

	for (resid = len; resid > 0; resid -= got, p += got) {
		get = FUNC3(chunk, resid);
		got = FUNC5(fd, buf, get);
		if (got <= 0) {
			if (got < 0)
				FUNC4("kboot_readin: read failed\n");
			break;
		}

		FUNC1(buf, p, got);
	}

	FUNC0 (buf);
	return (len - resid);
}