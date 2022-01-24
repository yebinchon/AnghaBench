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
struct bsdtar {char* buff; size_t buff_size; } ;
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;
typedef  scalar_t__ ssize_t ;
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 int ARCHIVE_OK ; 
 int ARCHIVE_WARN ; 
 int /*<<< orphan*/  FUNC0 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive*) ; 
 int FUNC3 (struct archive*,void const**,size_t*,scalar_t__*) ; 
 scalar_t__ FUNC4 (struct archive*,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct bsdtar*,struct archive*,struct archive_entry*,scalar_t__) ; 

__attribute__((used)) static int
FUNC9(struct bsdtar *bsdtar, struct archive *a,
    struct archive *in_a, struct archive_entry *entry)
{
	size_t	bytes_read;
	ssize_t	bytes_written;
	int64_t	offset, progress = 0;
	char *null_buff = NULL;
	const void *buff;
	int r;

	while ((r = FUNC3(in_a, &buff,
	    &bytes_read, &offset)) == ARCHIVE_OK) {
		if (FUNC7())
			FUNC8(bsdtar, a, entry, progress);

		if (offset > progress) {
			int64_t sparse = offset - progress;
			size_t ns;

			if (null_buff == NULL) {
				null_buff = bsdtar->buff;
				FUNC6(null_buff, 0, bsdtar->buff_size);
			}

			while (sparse > 0) {
				if (sparse > (int64_t)bsdtar->buff_size)
					ns = bsdtar->buff_size;
				else
					ns = (size_t)sparse;
				bytes_written =
				    FUNC4(a, null_buff, ns);
				if (bytes_written < 0) {
					/* Write failed; this is bad */
					FUNC5(0, "%s",
					     FUNC2(a));
					return (-1);
				}
				if ((size_t)bytes_written < ns) {
					/* Write was truncated; warn but
					 * continue. */
					FUNC5(0,
					    "%s: Truncated write; file may "
					    "have grown while being archived.",
					    FUNC0(entry));
					return (0);
				}
				progress += bytes_written;
				sparse -= bytes_written;
			}
		}

		bytes_written = FUNC4(a, buff, bytes_read);
		if (bytes_written < 0) {
			/* Write failed; this is bad */
			FUNC5(0, "%s", FUNC2(a));
			return (-1);
		}
		if ((size_t)bytes_written < bytes_read) {
			/* Write was truncated; warn but continue. */
			FUNC5(0,
			    "%s: Truncated write; file may have grown "
			    "while being archived.",
			    FUNC0(entry));
			return (0);
		}
		progress += bytes_written;
	}
	if (r < ARCHIVE_WARN) {
		FUNC5(FUNC1(a), "%s", FUNC2(a));
		return (-1);
	}
	return (0);
}