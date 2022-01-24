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
struct read_memory_data {unsigned char const* start; unsigned char const* p; unsigned char const* end; size_t read_size; } ;
struct archive {int dummy; } ;

/* Variables and functions */
 int ARCHIVE_FATAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC0 (struct archive*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive*,struct read_memory_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct archive*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct archive*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct archive*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct archive*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct archive*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC8 (int,int) ; 
 int /*<<< orphan*/  memory_read ; 
 int /*<<< orphan*/  memory_read_close ; 
 int /*<<< orphan*/  memory_read_open ; 
 int /*<<< orphan*/  memory_read_seek ; 
 int /*<<< orphan*/  memory_read_skip ; 

int
FUNC9(struct archive *a, const void *buff,
    size_t size, size_t read_size)
{
	struct read_memory_data *mine;

	mine = (struct read_memory_data *)FUNC8(1, sizeof(*mine));
	if (mine == NULL) {
		FUNC7(a, ENOMEM, "No memory");
		return (ARCHIVE_FATAL);
	}
	mine->start = mine->p = (const unsigned char *)buff;
	mine->end = mine->start + size;
	mine->read_size = read_size;
	FUNC3(a, memory_read_open);
	FUNC4(a, memory_read);
	FUNC5(a, memory_read_seek);
	FUNC6(a, memory_read_skip);
	FUNC2(a, memory_read_close);
	FUNC1(a, mine);
	return (FUNC0(a));
}