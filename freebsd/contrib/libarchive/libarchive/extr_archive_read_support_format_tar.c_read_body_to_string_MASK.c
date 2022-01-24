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
struct tar {int dummy; } ;
struct archive_string {char* s; size_t length; } ;
struct archive_read {int /*<<< orphan*/  archive; } ;
struct archive_entry_header_ustar {int /*<<< orphan*/  size; } ;
typedef  int int64_t ;

/* Variables and functions */
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 void* FUNC0 (struct archive_read*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC2 (struct archive_string*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,void const*,size_t) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct archive_read*,size_t*) ; 

__attribute__((used)) static int
FUNC6(struct archive_read *a, struct tar *tar,
    struct archive_string *as, const void *h, size_t *unconsumed)
{
	int64_t size;
	const struct archive_entry_header_ustar *header;
	const void *src;

	(void)tar; /* UNUSED */
	header = (const struct archive_entry_header_ustar *)h;
	size  = FUNC4(header->size, sizeof(header->size));
	if ((size > 1048576) || (size < 0)) {
		FUNC1(&a->archive, EINVAL,
		    "Special header too large");
		return (ARCHIVE_FATAL);
	}

	/* Fail if we can't make our buffer big enough. */
	if (FUNC2(as, (size_t)size+1) == NULL) {
		FUNC1(&a->archive, ENOMEM,
		    "No memory");
		return (ARCHIVE_FATAL);
	}

	FUNC5(a, unconsumed);

	/* Read the body into the string. */
	*unconsumed = (size_t)((size + 511) & ~ 511);
	src = FUNC0(a, *unconsumed, NULL);
	if (src == NULL) {
		*unconsumed = 0;
		return (ARCHIVE_FATAL);
	}
	FUNC3(as->s, src, (size_t)size);
	as->s[size] = '\0';
	as->length = (size_t)size;
	return (ARCHIVE_OK);
}