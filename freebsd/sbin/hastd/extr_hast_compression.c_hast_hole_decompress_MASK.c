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
typedef  size_t uint32_t ;
typedef  int /*<<< orphan*/  size ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char const*,size_t*,int) ; 
 int /*<<< orphan*/  FUNC1 (void*,size_t) ; 
 size_t FUNC2 (size_t) ; 
 void* FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t) ; 

__attribute__((used)) static void *
FUNC5(const unsigned char *data, size_t *sizep)
{
	uint32_t size;
	void *newbuf;

	if (*sizep != sizeof(size)) {
		FUNC4("Unable to decompress (invalid size: %zu).",
		    *sizep);
		return (NULL);
	}

	FUNC0(data, &size, sizeof(size));
	size = FUNC2(size);

	newbuf = FUNC3(size);
	if (newbuf == NULL) {
		FUNC4("Unable to decompress (no memory: %zu).",
		    (size_t)size);
		return (NULL);
	}
	FUNC1(newbuf, size);
	*sizep = size;

	return (newbuf);
}