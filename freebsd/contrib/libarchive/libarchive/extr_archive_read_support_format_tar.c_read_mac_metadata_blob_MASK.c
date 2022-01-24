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
typedef  int wchar_t ;
struct tar {int dummy; } ;
struct archive_read {int dummy; } ;
struct archive_entry {int dummy; } ;
typedef  int int64_t ;

/* Variables and functions */
 int ARCHIVE_FAILED ; 
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 void* FUNC0 (struct archive_read*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_entry*,void const*,size_t) ; 
 char* FUNC2 (struct archive_entry*) ; 
 int* FUNC3 (struct archive_entry*) ; 
 int FUNC4 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC5 (struct archive_read*,size_t*) ; 
 int FUNC6 (struct archive_read*,struct tar*,struct archive_entry*,size_t*) ; 

__attribute__((used)) static int
FUNC7(struct archive_read *a, struct tar *tar,
    struct archive_entry *entry, const void *h, size_t *unconsumed)
{
	int64_t size;
	const void *data;
	const char *p, *name;
	const wchar_t *wp, *wname;

	(void)h; /* UNUSED */

	wname = wp = FUNC3(entry);
	if (wp != NULL) {
		/* Find the last path element. */
		for (; *wp != L'\0'; ++wp) {
			if (wp[0] == '/' && wp[1] != L'\0')
				wname = wp + 1;
		}
		/*
		 * If last path element starts with "._", then
		 * this is a Mac extension.
		 */
		if (wname[0] != L'.' || wname[1] != L'_' || wname[2] == L'\0')
			return ARCHIVE_OK;
	} else {
		/* Find the last path element. */
		name = p = FUNC2(entry);
		if (p == NULL)
			return (ARCHIVE_FAILED);
		for (; *p != '\0'; ++p) {
			if (p[0] == '/' && p[1] != '\0')
				name = p + 1;
		}
		/*
		 * If last path element starts with "._", then
		 * this is a Mac extension.
		 */
		if (name[0] != '.' || name[1] != '_' || name[2] == '\0')
			return ARCHIVE_OK;
	}

 	/* Read the body as a Mac OS metadata blob. */
	size = FUNC4(entry);

	/*
	 * TODO: Look beyond the body here to peek at the next header.
	 * If it's a regular header (not an extension header)
	 * that has the wrong name, just return the current
	 * entry as-is, without consuming the body here.
	 * That would reduce the risk of us mis-identifying
	 * an ordinary file that just happened to have
	 * a name starting with "._".
	 *
	 * Q: Is the above idea really possible?  Even
	 * when there are GNU or pax extension entries?
	 */
	data = FUNC0(a, (size_t)size, NULL);
	if (data == NULL) {
		*unconsumed = 0;
		return (ARCHIVE_FATAL);
	}
	FUNC1(entry, data, (size_t)size);
	*unconsumed = (size_t)((size + 511) & ~ 511);
	FUNC5(a, unconsumed);
	return (FUNC6(a, tar, entry, unconsumed));
}