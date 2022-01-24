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
struct read_memory_data {unsigned char const* start; unsigned char const* p; size_t read_size; int copy_buff_offset; size_t copy_buff_size; struct read_memory_data* copy_buff; int /*<<< orphan*/  end; } ;
struct archive {int dummy; } ;

/* Variables and functions */
 int ARCHIVE_FATAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  __LA_FALLTHROUGH ; 
 int FUNC0 (struct archive*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive*,struct read_memory_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct archive*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct archive*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct archive*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct archive*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct archive*,int /*<<< orphan*/ ,char*) ; 
 void* FUNC8 (int) ; 
 int /*<<< orphan*/  memory_read ; 
 int /*<<< orphan*/  memory_read_close ; 
 int /*<<< orphan*/  memory_read_open ; 
 int /*<<< orphan*/  memory_read_seek ; 
 int /*<<< orphan*/  memory_read_skip ; 
 int /*<<< orphan*/  FUNC9 (struct read_memory_data*,int,int) ; 

__attribute__((used)) static int
FUNC10(struct archive *a, const void *buff,
    size_t size, size_t read_size, int level)
{
	struct read_memory_data *mine = NULL;

	switch (level) {
	case 3:
		FUNC5(a, memory_read_seek);
		__LA_FALLTHROUGH;
	case 2:
		FUNC3(a, memory_read_open);
		FUNC6(a, memory_read_skip);
		__LA_FALLTHROUGH;
	case 1:
		mine = FUNC8(sizeof(*mine));
		if (mine == NULL) {
			FUNC7(a, ENOMEM, "No memory");
			return (ARCHIVE_FATAL);
		}
		FUNC9(mine, 0, sizeof(*mine));
		mine->start = mine->p = (const unsigned char *)buff;
		mine->end = mine->start + size;
		mine->read_size = read_size;
		mine->copy_buff_offset = 32;
		mine->copy_buff_size = read_size + mine->copy_buff_offset * 2;
		mine->copy_buff = FUNC8(mine->copy_buff_size);
		FUNC9(mine->copy_buff, 0xA5, mine->copy_buff_size);

		FUNC4(a, memory_read);
		FUNC2(a, memory_read_close);
		FUNC1(a, mine);
	}
	return FUNC0(a);
}