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
struct archive_write_program_data {struct archive_write_program_data* child_buf; struct archive_write_program_data* program_name; scalar_t__ child; } ;

/* Variables and functions */
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_write_program_data*) ; 

int
FUNC2(struct archive_write_program_data *data)
{

	if (data) {
#if defined(_WIN32) && !defined(__CYGWIN__)
		if (data->child)
			CloseHandle(data->child);
#endif
		FUNC1(data->program_name);
		FUNC1(data->child_buf);
		FUNC1(data);
	}
	return (ARCHIVE_OK);
}