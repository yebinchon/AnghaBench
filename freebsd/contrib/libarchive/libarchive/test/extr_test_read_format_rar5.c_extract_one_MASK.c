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
typedef  scalar_t__ uint32_t ;
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;
typedef  scalar_t__ la_ssize_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct archive_entry*) ; 
 scalar_t__ FUNC1 (struct archive*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (scalar_t__) ; 

__attribute__((used)) static
int FUNC6(struct archive* a, struct archive_entry* ae, uint32_t crc) {
	la_ssize_t fsize, bytes_read;
	uint8_t* buf;
	int ret = 1;
	uint32_t computed_crc;

	fsize = (la_ssize_t) FUNC0(ae);
	buf = FUNC5(fsize);
	if(buf == NULL)
		return 1;

	bytes_read = FUNC1(a, buf, fsize);
	if(bytes_read != fsize) {
		FUNC2(bytes_read, fsize);
		goto fn_exit;
	}

	computed_crc = FUNC3(0, buf, fsize);
	FUNC2(computed_crc, crc);
	ret = 0;

fn_exit:
	FUNC4(buf);
	return ret;
}