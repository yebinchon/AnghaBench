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
typedef  int uint32_t ;
typedef  scalar_t__ uint16_t ;
struct rar5 {int dummy; } ;

/* Variables and functions */
 int ARCHIVE_EOF ; 
 scalar_t__ ARCHIVE_OK ; 
 scalar_t__ FUNC0 (struct rar5*,int /*<<< orphan*/  const*,scalar_t__*) ; 
 scalar_t__ FUNC1 (struct rar5*,int /*<<< orphan*/  const*,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct rar5*,int) ; 

__attribute__((used)) static int FUNC3(struct rar5* rar, const uint8_t* p,
    uint32_t* filter_data)
{
	int i, bytes;
	uint32_t data = 0;

	if(ARCHIVE_OK != FUNC1(rar, p, 2, &bytes))
		return ARCHIVE_EOF;

	bytes++;

	for(i = 0; i < bytes; i++) {
		uint16_t byte;

		if(ARCHIVE_OK != FUNC0(rar, p, &byte)) {
			return ARCHIVE_EOF;
		}

		/* Cast to uint32_t will ensure the shift operation will not
		 * produce undefined result. */
		data += ((uint32_t) byte >> 8) << (i * 8);
		FUNC2(rar, 8);
	}

	*filter_data = data;
	return ARCHIVE_OK;
}