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
struct ebuf {scalar_t__ eb_magic; size_t eb_size; scalar_t__ eb_used; scalar_t__ eb_start; } ;

/* Variables and functions */
 scalar_t__ EBUF_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void const*,scalar_t__,size_t) ; 
 int FUNC2 (struct ebuf*,size_t) ; 

int
FUNC3(struct ebuf *eb, const void *data, size_t size)
{

	FUNC0(eb != NULL && eb->eb_magic == EBUF_MAGIC);

	if (size > (size_t)(eb->eb_used - eb->eb_start)) {
		/*
		 * We can't add more entries at the front, so we have to extend
		 * our buffer.
		 */
		if (FUNC2(eb, size) == -1)
			return (-1);
	}
	FUNC0(size <= (size_t)(eb->eb_used - eb->eb_start));

	eb->eb_size += size;
	eb->eb_used -= size;
	/*
	 * If data is NULL the caller just wants to reserve place.
	 */
	if (data != NULL)
		FUNC1(data, eb->eb_used, size);

	return (0);
}