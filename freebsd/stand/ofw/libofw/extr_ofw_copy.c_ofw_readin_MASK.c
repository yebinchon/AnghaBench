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
typedef  scalar_t__ vm_offset_t ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 size_t READIN_BUF ; 
 int /*<<< orphan*/  FUNC0 (void*,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* FUNC2 (size_t) ; 
 size_t FUNC3 (size_t,size_t const) ; 
 scalar_t__ FUNC4 (scalar_t__,size_t const) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (int const,void*,size_t) ; 

ssize_t
FUNC7(const int fd, vm_offset_t dest, const size_t len)
{
	void		*buf;
	size_t		resid, chunk, get;
	ssize_t		got;
	vm_offset_t	p;

	p = dest;

	chunk = FUNC3(READIN_BUF, len);
	buf = FUNC2(chunk);
	if (buf == NULL) {
		FUNC5("ofw_readin: buf malloc failed\n");
		return(0);
	}

        if (FUNC4(dest, len)) {
                FUNC5("ofw_readin: map error\n");
                FUNC1(buf);
                return (0);
        }

	for (resid = len; resid > 0; resid -= got, p += got) {
		get = FUNC3(chunk, resid);
		got = FUNC6(fd, buf, get);

		if (got <= 0) {
			if (got < 0)
				FUNC5("ofw_readin: read failed\n");
			break;
		}

		FUNC0(buf, (void *)p, got);
	}

	FUNC1(buf);
	return(len - resid);
}