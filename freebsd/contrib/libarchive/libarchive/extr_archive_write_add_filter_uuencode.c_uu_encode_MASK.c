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
struct archive_string {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct archive_string*,char) ; 

__attribute__((used)) static void
FUNC1(struct archive_string *as, const unsigned char *p, size_t len)
{
	int c;

	c = (int)len;
	FUNC0(as, c?c + 0x20:'`');
	for (; len >= 3; p += 3, len -= 3) {
		c = p[0] >> 2;
		FUNC0(as, c?c + 0x20:'`');
		c = ((p[0] & 0x03) << 4) | ((p[1] & 0xf0) >> 4);
		FUNC0(as, c?c + 0x20:'`');
		c = ((p[1] & 0x0f) << 2) | ((p[2] & 0xc0) >> 6);
		FUNC0(as, c?c + 0x20:'`');
		c = p[2] & 0x3f;
		FUNC0(as, c?c + 0x20:'`');
	}
	if (len > 0) {
		c = p[0] >> 2;
		FUNC0(as, c?c + 0x20:'`');
		c = (p[0] & 0x03) << 4;
		if (len == 1) {
			FUNC0(as, c?c + 0x20:'`');
			FUNC0(as, '`');
			FUNC0(as, '`');
		} else {
			c |= (p[1] & 0xf0) >> 4;
			FUNC0(as, c?c + 0x20:'`');
			c = (p[1] & 0x0f) << 2;
			FUNC0(as, c?c + 0x20:'`');
			FUNC0(as, '`');
		}
	}
	FUNC0(as, '\n');
}