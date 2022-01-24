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
struct sparse {scalar_t__ size; scalar_t__ type; } ;
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 scalar_t__ ARCHIVE_OK ; 
 scalar_t__ DATA ; 
 scalar_t__ END ; 
 scalar_t__ HOLE ; 
 int /*<<< orphan*/  FUNC0 (struct archive_entry*) ; 
 struct archive_entry* FUNC1 () ; 
 int FUNC2 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct archive*) ; 
 scalar_t__ FUNC4 (struct archive*,void const**,size_t*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (struct archive*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (struct archive*,struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct archive*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char const*,int,char) ; 
 int /*<<< orphan*/  FUNC11 (char const*,struct sparse const*) ; 
 int /*<<< orphan*/  FUNC12 (char const*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC14(struct archive *a, const char *path,
    const struct sparse *sparse, int expected_holes)
{
	struct archive_entry *ae;
	const void *buff;
	size_t bytes_read;
	int64_t offset, expected_offset, last_offset;
	int holes_seen = 0;

	FUNC11(path, sparse);
	FUNC7((ae = FUNC1()) != NULL);
	FUNC9(a, ARCHIVE_OK, FUNC5(a, path));
	FUNC9(a, ARCHIVE_OK, FUNC6(a, ae));

	expected_offset = 0;
	last_offset = 0;
	while (ARCHIVE_OK == FUNC4(a, &buff, &bytes_read,
	    &offset)) {
		const char *start = buff;
#if DEBUG
		fprintf(stderr, "%s: bytes_read=%d offset=%d\n", path, (int)bytes_read, (int)offset);
#endif
		if (offset > last_offset) {
			++holes_seen;
		}
		/* Blocks entirely before the data we just read. */
		while (expected_offset + (int64_t)sparse->size < offset) {
#if DEBUG
			fprintf(stderr, "    skipping expected_offset=%d, size=%d\n", (int)expected_offset, (int)sparse->size);
#endif
			/* Must be holes. */
			FUNC7(sparse->type == HOLE);
			expected_offset += sparse->size;
			++sparse;
		}
		/* Block that overlaps beginning of data */
		if (expected_offset < offset
		    && expected_offset + (int64_t)sparse->size <= offset + (int64_t)bytes_read) {
			const char *end = (const char *)buff + (expected_offset - offset) + (size_t)sparse->size;
#if DEBUG
			fprintf(stderr, "    overlapping hole expected_offset=%d, size=%d\n", (int)expected_offset, (int)sparse->size);
#endif
			/* Must be a hole, overlap must be filled with '\0' */
			if (FUNC7(sparse->type == HOLE)) {
				FUNC10(start, end - start, '\0');
			}
			start = end;
			expected_offset += sparse->size;
			++sparse;
		}
		/* Blocks completely contained in data we just read. */
		while (expected_offset + (int64_t)sparse->size <= offset + (int64_t)bytes_read) {
			const char *end = (const char *)buff + (expected_offset - offset) + (size_t)sparse->size;
			if (sparse->type == HOLE) {
#if DEBUG
				fprintf(stderr, "    contained hole expected_offset=%d, size=%d\n", (int)expected_offset, (int)sparse->size);
#endif

				/* verify data corresponding to hole is '\0' */
				if (end > (const char *)buff + bytes_read) {
					end = (const char *)buff + bytes_read;
				}
				FUNC10(start, end - start, '\0');
				start = end;
				expected_offset += sparse->size;
				++sparse;
			} else if (sparse->type == DATA) {
#if DEBUG
				fprintf(stderr, "    contained data expected_offset=%d, size=%d\n", (int)expected_offset, (int)sparse->size);
#endif
				/* verify data corresponding to hole is ' ' */
				if (FUNC7(expected_offset + sparse->size <= offset + bytes_read)) {
					FUNC7(start == (const char *)buff + (size_t)(expected_offset - offset));
					FUNC10(start, end - start, ' ');
				}
				start = end;
				expected_offset += sparse->size;
				++sparse;
			} else {
				break;
			}
		}
		/* Block that overlaps end of data */
		if (expected_offset < offset + (int64_t)bytes_read) {
			const char *end = (const char *)buff + bytes_read;
#if DEBUG
			fprintf(stderr, "    trailing overlap expected_offset=%d, size=%d\n", (int)expected_offset, (int)sparse->size);
#endif
			/* Must be a hole, overlap must be filled with '\0' */
			if (FUNC7(sparse->type == HOLE)) {
				FUNC10(start, end - start, '\0');
			}
		}
		last_offset = offset + bytes_read;
	}
	/* Count a hole at EOF? */
	if (last_offset < FUNC2(ae)) {
		++holes_seen;
	}

	/* Verify blocks after last read */
	while (sparse->type == HOLE) {
		expected_offset += sparse->size;
		++sparse;
	}
	FUNC7(sparse->type == END);
	FUNC8(expected_offset, FUNC2(ae));

	FUNC12(path);
	FUNC8(holes_seen, expected_holes);

	FUNC9(a, ARCHIVE_OK, FUNC3(a));
	FUNC0(ae);
}