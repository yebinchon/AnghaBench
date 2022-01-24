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
struct archive_write_program_data {int child_stdin; int child_stdout; scalar_t__ child_buf_avail; scalar_t__ child_buf; scalar_t__ child_buf_len; } ;
struct archive_write_filter {int /*<<< orphan*/  next_filter; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int ARCHIVE_OK ; 
 scalar_t__ EAGAIN ; 
 scalar_t__ EINTR ; 
 scalar_t__ EPIPE ; 
 int /*<<< orphan*/  F_SETFL ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,scalar_t__,scalar_t__) ; 
 int FUNC5 (int,char const*,size_t) ; 

__attribute__((used)) static ssize_t
FUNC6(struct archive_write_filter *f,
    struct archive_write_program_data *data, const char *buf, size_t buf_len)
{
	ssize_t ret;

	if (data->child_stdin == -1)
		return (-1);

	if (buf_len == 0)
		return (-1);

	for (;;) {
		do {
			ret = FUNC5(data->child_stdin, buf, buf_len);
		} while (ret == -1 && errno == EINTR);

		if (ret > 0)
			return (ret);
		if (ret == 0) {
			FUNC2(data->child_stdin);
			data->child_stdin = -1;
			FUNC3(data->child_stdout, F_SETFL, 0);
			return (0);
		}
		if (ret == -1 && errno != EAGAIN)
			return (-1);

		if (data->child_stdout == -1) {
			FUNC3(data->child_stdin, F_SETFL, 0);
			FUNC0(data->child_stdin,
				data->child_stdout);
			continue;
		}

		do {
			ret = FUNC4(data->child_stdout,
			    data->child_buf + data->child_buf_avail,
			    data->child_buf_len - data->child_buf_avail);
		} while (ret == -1 && errno == EINTR);

		if (ret == 0 || (ret == -1 && errno == EPIPE)) {
			FUNC2(data->child_stdout);
			data->child_stdout = -1;
			FUNC3(data->child_stdin, F_SETFL, 0);
			continue;
		}
		if (ret == -1 && errno == EAGAIN) {
			FUNC0(data->child_stdin,
				data->child_stdout);
			continue;
		}
		if (ret == -1)
			return (-1);

		data->child_buf_avail += ret;

		ret = FUNC1(f->next_filter,
		    data->child_buf, data->child_buf_avail);
		if (ret != ARCHIVE_OK)
			return (-1);
		data->child_buf_avail = 0;
	}
}