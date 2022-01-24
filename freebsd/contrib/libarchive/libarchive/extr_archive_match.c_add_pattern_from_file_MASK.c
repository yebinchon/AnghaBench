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
struct match_list {int dummy; } ;
struct archive_string {int /*<<< orphan*/  s; } ;
struct archive_match {int /*<<< orphan*/  archive; } ;
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;
typedef  int /*<<< orphan*/  int64_t ;

/* Variables and functions */
 int ARCHIVE_EOF ; 
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC0 (struct archive_match*,struct match_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct archive*) ; 
 int FUNC2 (struct archive*,void const**,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct archive*) ; 
 struct archive* FUNC4 () ; 
 int FUNC5 (struct archive*,struct archive_entry**) ; 
 int FUNC6 (struct archive*,void const*,int) ; 
 int FUNC7 (struct archive*,void const*,int) ; 
 int FUNC8 (struct archive*) ; 
 int FUNC9 (struct archive*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct archive_string*) ; 
 int /*<<< orphan*/  FUNC12 (struct archive_string*) ; 
 int /*<<< orphan*/  FUNC13 (struct archive_string*) ; 
 scalar_t__ FUNC14 (struct archive_string*) ; 
 int /*<<< orphan*/  FUNC15 (struct archive_string*,char const*,size_t) ; 

__attribute__((used)) static int
FUNC16(struct archive_match *a, struct match_list *mlist,
    int mbs, const void *pathname, int nullSeparator)
{
	struct archive *ar;
	struct archive_entry *ae;
	struct archive_string as;
	const void *buff;
	size_t size;
	int64_t offset;
	int r;

	ar = FUNC4(); 
	if (ar == NULL) {
		FUNC10(&(a->archive), ENOMEM, "No memory");
		return (ARCHIVE_FATAL);
	}
	r = FUNC9(ar);
	r = FUNC8(ar);
	if (r != ARCHIVE_OK) {
		FUNC1(&(a->archive), ar);
		FUNC3(ar);
		return (r);
	}
	if (mbs)
		r = FUNC6(ar, pathname, 512*20);
	else
		r = FUNC7(ar, pathname, 512*20);
	if (r != ARCHIVE_OK) {
		FUNC1(&(a->archive), ar);
		FUNC3(ar);
		return (r);
	}
	r = FUNC5(ar, &ae);
	if (r != ARCHIVE_OK) {
		FUNC3(ar);
		if (r == ARCHIVE_EOF) {
			return (ARCHIVE_OK);
		} else {
			FUNC1(&(a->archive), ar);
			return (r);
		}
	}

	FUNC13(&as);

	while ((r = FUNC2(ar, &buff, &size, &offset))
	    == ARCHIVE_OK) {
		const char *b = (const char *)buff;

		while (size) {
			const char *s = (const char *)b;
			size_t length = 0;
			int found_separator = 0;

			while (length < size) {
				if (nullSeparator) {
					if (*b == '\0') {
						found_separator = 1;
						break;
					}
				} else {
			            	if (*b == 0x0d || *b == 0x0a) {
						found_separator = 1;
						break;
					}
				}
				b++;
				length++;
			}
			if (!found_separator) {
				FUNC15(&as, s, length);
				/* Read next data block. */
				break;
			}
			b++;
			size -= length + 1;
			FUNC15(&as, s, length);

			/* If the line is not empty, add the pattern. */
			if (FUNC14(&as) > 0) {
				/* Add pattern. */
				r = FUNC0(a, mlist, as.s);
				if (r != ARCHIVE_OK) {
					FUNC3(ar);
					FUNC12(&as);
					return (r);
				}
				FUNC11(&as);
			}
		}
	}

	/* If an error occurred, report it immediately. */
	if (r < ARCHIVE_OK) {
		FUNC1(&(a->archive), ar);
		FUNC3(ar);
		FUNC12(&as);
		return (r);
	}

	/* If the line is not empty, add the pattern. */
	if (r == ARCHIVE_EOF && FUNC14(&as) > 0) {
		/* Add pattern. */
		r = FUNC0(a, mlist, as.s);
		if (r != ARCHIVE_OK) {
			FUNC3(ar);
			FUNC12(&as);
			return (r);
		}
	}
	FUNC3(ar);
	FUNC12(&as);
	return (ARCHIVE_OK);
}