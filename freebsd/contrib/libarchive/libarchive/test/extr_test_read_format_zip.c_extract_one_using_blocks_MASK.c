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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct archive {int dummy; } ;
typedef  scalar_t__ la_ssize_t ;

/* Variables and functions */
 scalar_t__ ARCHIVE_RETRY ; 
 scalar_t__ FUNC0 (struct archive*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int) ; 

__attribute__((used)) static
int FUNC6(struct archive* a, int block_size, uint32_t crc)
{
	uint8_t* buf;
	int ret = 1;
	uint32_t computed_crc = 0;
	la_ssize_t bytes_read;

	buf = FUNC5(block_size);
	if(buf == NULL)
		return 1;

	while(1) {
		bytes_read = FUNC0(a, buf, block_size);
		if(bytes_read == ARCHIVE_RETRY)
			continue;
		else if(bytes_read == 0)
			break;
		else if(bytes_read < 0) {
			/* If we're here, it means the decompressor has failed
			 * to properly decode test file. */
			FUNC1(0);
			ret = 1;
			goto fn_exit;
		} else {
			/* ok */
		}

		computed_crc = FUNC3(computed_crc, buf, bytes_read);
	}

	FUNC2(computed_crc, crc);
	ret = 0;

fn_exit:
	FUNC4(buf);
	return ret;
}