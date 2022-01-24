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
struct ebuf {int /*<<< orphan*/  eb_magic; scalar_t__ eb_size; int /*<<< orphan*/ * eb_start; int /*<<< orphan*/ * eb_used; int /*<<< orphan*/ * eb_end; } ;

/* Variables and functions */
 int /*<<< orphan*/  EBUF_MAGIC ; 
 size_t PAGE_SIZE ; 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (struct ebuf*) ; 
 void* FUNC1 (size_t) ; 

struct ebuf *
FUNC2(size_t size)
{
	struct ebuf *eb;
	int rerrno;

	eb = FUNC1(sizeof(*eb));
	if (eb == NULL)
		return (NULL);
	size += PAGE_SIZE;
	eb->eb_start = FUNC1(size);
	if (eb->eb_start == NULL) {
		rerrno = errno;
		FUNC0(eb);
		errno = rerrno;
		return (NULL);
	}
	eb->eb_end = eb->eb_start + size;
	/*
	 * We set start address for real data not at the first entry, because
	 * we want to be able to add data at the front.
	 */
	eb->eb_used = eb->eb_start + PAGE_SIZE / 4;
	eb->eb_size = 0;
	eb->eb_magic = EBUF_MAGIC;

	return (eb);
}