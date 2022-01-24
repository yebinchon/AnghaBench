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
struct archive_write {int dummy; } ;

/* Variables and functions */
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 unsigned char* FUNC1 (struct archive_write*) ; 
 int FUNC2 (struct archive_write*,size_t) ; 
 size_t FUNC3 (struct archive_write*) ; 

__attribute__((used)) static int
FUNC4(struct archive_write *a, size_t size)
{
	size_t remaining;
	unsigned char *p, *old;
	int r;

	remaining = FUNC3(a);
	p = FUNC1(a);
	if (size <= remaining) {
		FUNC0(p, 0, size);
		return (FUNC2(a, size));
	}
	FUNC0(p, 0, remaining);
	r = FUNC2(a, remaining);
	if (r != ARCHIVE_OK)
		return (r);
	size -= remaining;
	old = p;
	p = FUNC1(a);
	FUNC0(p, 0, old - p);
	remaining = FUNC3(a);
	while (size) {
		size_t wsize = size;

		if (wsize > remaining)
			wsize = remaining;
		r = FUNC2(a, wsize);
		if (r != ARCHIVE_OK)
			return (r);
		size -= wsize;
	}
	return (ARCHIVE_OK);
}