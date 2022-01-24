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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  size ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t) ; 

__attribute__((used)) static void *
FUNC5(const unsigned char *data, size_t *sizep)
{
	uint32_t size;
	void *newbuf;

	if (!FUNC0(data, *sizep))
		return (NULL);

	newbuf = FUNC3(sizeof(size));
	if (newbuf == NULL) {
		FUNC4("Unable to compress (no memory: %zu).",
		    (size_t)*sizep);
		return (NULL);
	}
	size = FUNC2((uint32_t)*sizep);
	FUNC1(&size, newbuf, sizeof(size));
	*sizep = sizeof(size);

	return (newbuf);
}