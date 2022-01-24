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
typedef  int uint8_t ;
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int utf8_left ; 
 int utf8_partial ; 

__attribute__((used)) static void
FUNC3(uint8_t c)
{
	if ((c & 0x80) == 0x00) {
		/* One-byte sequence. */
		FUNC2();
		FUNC1(c);
		return;
	}
	if ((c & 0xe0) == 0xc0) {
		/* Two-byte sequence. */
		FUNC2();
		utf8_left = 1;
		utf8_partial = c;
		return;
	}
	if ((c & 0xf0) == 0xe0) {
		/* Three-byte sequence. */
		FUNC2();
		utf8_left = 2;
		utf8_partial = c;
		return;
	}
	if ((c & 0xf8) == 0xf0) {
		/* Four-byte sequence. */
		FUNC2();
		utf8_left = 3;
		utf8_partial = c;
		return;
	}
	if ((c & 0xc0) == 0x80) {
		/* Invalid state? */
		if (utf8_left == 0) {
			FUNC1(c);
			return;
		}
		utf8_left--;
		utf8_partial = (utf8_partial << 8) | c;
		if (utf8_left == 0) {
			uint32_t v, u;
			uint8_t b;

			v = 0;
			u = utf8_partial;
			b = (u >> 24) & 0xff;
			if (b != 0) {		/* Four-byte sequence */
				v = b & 0x07;
				b = (u >> 16) & 0xff;
				v = (v << 6) | (b & 0x3f);
				b = (u >> 8) & 0xff;
				v = (v << 6) | (b & 0x3f);
				b = u & 0xff;
				v = (v << 6) | (b & 0x3f);
			} else if ((b = (u >> 16) & 0xff) != 0) {
				v = b & 0x0f;	/* Three-byte sequence */
				b = (u >> 8) & 0xff;
				v = (v << 6) | (b & 0x3f);
				b = u & 0xff;
				v = (v << 6) | (b & 0x3f);
			} else if ((b = (u >> 8) & 0xff) != 0) {
				v = b & 0x1f;	/* Two-byte sequence */
				b = u & 0xff;
				v = (v << 6) | (b & 0x3f);
			}
			/* Send unicode char directly to console. */
			FUNC0(v);
			utf8_partial = 0;
		}
		return;
	}
	/* Anything left is illegal in UTF-8 sequence. */
	FUNC2();
	FUNC1(c);
}