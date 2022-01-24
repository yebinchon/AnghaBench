#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ off_t ;
typedef  int /*<<< orphan*/  io_buf ;
struct TYPE_4__ {int /*<<< orphan*/  src_name; int /*<<< orphan*/  src_fd; } ;
typedef  TYPE_1__ file_pair ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 size_t const SIZE_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  errno ; 
 size_t FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

extern bool
FUNC5(file_pair *pair, io_buf *buf, size_t size, off_t pos)
{
	// Using lseek() and read() is more portable than pread() and
	// for us it is as good as real pread().
	if (FUNC2(pair->src_fd, pos, SEEK_SET) != pos) {
		FUNC3(FUNC0("%s: Error seeking the file: %s"),
				pair->src_name, FUNC4(errno));
		return true;
	}

	const size_t amount = FUNC1(pair, buf, size);
	if (amount == SIZE_MAX)
		return true;

	if (amount != size) {
		FUNC3(FUNC0("%s: Unexpected end of file"),
				pair->src_name);
		return true;
	}

	return false;
}