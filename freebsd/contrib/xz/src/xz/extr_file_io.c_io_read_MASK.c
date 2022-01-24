#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int ssize_t ;
typedef  int io_wait_ret ;
struct TYPE_6__ {int /*<<< orphan*/ * u8; } ;
typedef  TYPE_1__ io_buf ;
struct TYPE_7__ {int src_eof; int /*<<< orphan*/  src_name; int /*<<< orphan*/  src_fd; } ;
typedef  TYPE_2__ file_pair ;

/* Variables and functions */
 scalar_t__ EINTR ; 
#define  IO_WAIT_ERROR 130 
#define  IO_WAIT_MORE 129 
#define  IO_WAIT_TIMEOUT 128 
 scalar_t__ FUNC0 (scalar_t__) ; 
 size_t SIZE_MAX ; 
 size_t SSIZE_MAX ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ errno ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 scalar_t__ user_abort ; 

extern size_t
FUNC9(file_pair *pair, io_buf *buf_union, size_t size)
{
	// We use small buffers here.
	FUNC2(size < SSIZE_MAX);

	uint8_t *buf = buf_union->u8;
	size_t left = size;

	while (left > 0) {
		const ssize_t amount = FUNC7(pair->src_fd, buf, left);

		if (amount == 0) {
			pair->src_eof = true;
			break;
		}

		if (amount == -1) {
			if (errno == EINTR) {
				if (user_abort)
					return SIZE_MAX;

				continue;
			}

#ifndef TUKLIB_DOSLIKE
			if (FUNC0(errno)) {
				const io_wait_ret ret = FUNC3(pair,
						FUNC6(),
						true);
				switch (ret) {
				case IO_WAIT_MORE:
					continue;

				case IO_WAIT_ERROR:
					return SIZE_MAX;

				case IO_WAIT_TIMEOUT:
					return size - left;

				default:
					FUNC4();
				}
			}
#endif

			FUNC5(FUNC1("%s: Read error: %s"),
					pair->src_name, FUNC8(errno));

			return SIZE_MAX;
		}

		buf += (size_t)(amount);
		left -= (size_t)(amount);
	}

	return size - left;
}