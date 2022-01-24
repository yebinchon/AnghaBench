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
struct archive_write_program_data {scalar_t__ child; int child_stdin; int child_stdout; int /*<<< orphan*/  program_name; scalar_t__ child_buf_avail; scalar_t__ child_buf; scalar_t__ child_buf_len; } ;
struct archive_write_filter {int /*<<< orphan*/  next_filter; int /*<<< orphan*/  archive; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ EINTR ; 
 scalar_t__ EIO ; 
 scalar_t__ EPIPE ; 
 int /*<<< orphan*/  F_SETFL ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int,scalar_t__,scalar_t__) ; 
 int FUNC7 (scalar_t__,int*,int /*<<< orphan*/ ) ; 

int
FUNC8(struct archive_write_filter *f,
    struct archive_write_program_data *data)
{
	int ret, r1, status;
	ssize_t bytes_read;

	if (data->child == 0)
		return FUNC1(f->next_filter);

	ret = 0;
	FUNC4(data->child_stdin);
	data->child_stdin = -1;
	FUNC5(data->child_stdout, F_SETFL, 0);

	for (;;) {
		do {
			bytes_read = FUNC6(data->child_stdout,
			    data->child_buf + data->child_buf_avail,
			    data->child_buf_len - data->child_buf_avail);
		} while (bytes_read == -1 && errno == EINTR);

		if (bytes_read == 0 || (bytes_read == -1 && errno == EPIPE))
			break;

		if (bytes_read == -1) {
			FUNC3(f->archive, errno,
			    "Error reading from program: %s", data->program_name);
			ret = ARCHIVE_FATAL;
			goto cleanup;
		}
		data->child_buf_avail += bytes_read;

		ret = FUNC2(f->next_filter,
		    data->child_buf, data->child_buf_avail);
		if (ret != ARCHIVE_OK) {
			ret = ARCHIVE_FATAL;
			goto cleanup;
		}
		data->child_buf_avail = 0;
	}

cleanup:
	/* Shut down the child. */
	if (data->child_stdin != -1)
		FUNC4(data->child_stdin);
	if (data->child_stdout != -1)
		FUNC4(data->child_stdout);
	while (FUNC7(data->child, &status, 0) == -1 && errno == EINTR)
		continue;
#if defined(_WIN32) && !defined(__CYGWIN__)
	CloseHandle(data->child);
#endif
	data->child = 0;

	if (status != 0) {
		FUNC3(f->archive, EIO,
		    "Error closing program: %s", data->program_name);
		ret = ARCHIVE_FATAL;
	}
	r1 = FUNC1(f->next_filter);
	return (r1 < ret ? r1 : ret);
}