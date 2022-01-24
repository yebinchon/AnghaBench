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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct ucl_emitter_functions {int /*<<< orphan*/  ud; int /*<<< orphan*/  (* ucl_emitter_append_len ) (char const*,size_t,int /*<<< orphan*/ ) ;} ;
struct ucl_emitter_context {struct ucl_emitter_functions* func; } ;
typedef  int /*<<< orphan*/  bl ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*,size_t,int /*<<< orphan*/ ) ; 

void
FUNC5 (struct ucl_emitter_context *ctx,
		const char *s, size_t len)
{
	const struct ucl_emitter_functions *func = ctx->func;
	const unsigned char fix_mask = 0xA0, l8_ch = 0xd9, l16_ch = 0xda, l32_ch = 0xdb;
	unsigned char buf[5];
	unsigned blen;

	if (len <= 0x1F) {
		blen = 1;
		buf[0] = (len | fix_mask) & 0xff;
	}
	else if (len <= 0xff) {
		blen = 2;
		buf[0] = l8_ch;
		buf[1] = len & 0xff;
	}
	else if (len <= 0xffff) {
		uint16_t bl = FUNC0 (len);

		blen = 3;
		buf[0] = l16_ch;
		FUNC2 (&buf[1], &bl, sizeof (bl));
	}
	else {
		uint32_t bl = FUNC1 (len);

		blen = 5;
		buf[0] = l32_ch;
		FUNC2 (&buf[1], &bl, sizeof (bl));
	}

	func->ucl_emitter_append_len (buf, blen, func->ud);
	func->ucl_emitter_append_len (s, len, func->ud);
}