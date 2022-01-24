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
typedef  int /*<<< orphan*/  uint64_t ;
struct ucl_emitter_functions {int /*<<< orphan*/  ud; int /*<<< orphan*/  (* ucl_emitter_append_len ) (unsigned char*,int,int /*<<< orphan*/ ) ;} ;
struct ucl_emitter_context {struct ucl_emitter_functions* func; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,double*,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int,int /*<<< orphan*/ ) ; 

void
FUNC3 (struct ucl_emitter_context *ctx, double val)
{
	const struct ucl_emitter_functions *func = ctx->func;
	union {
		double d;
		uint64_t i;
	} u;
	const unsigned char dbl_ch = 0xcb;
	unsigned char buf[sizeof(double) + 1];

	/* Convert to big endian */
	u.d = val;
	u.i = FUNC0 (u.i);

	buf[0] = dbl_ch;
	FUNC1 (&buf[1], &u.d, sizeof (double));
	func->ucl_emitter_append_len (buf, sizeof (buf), func->ud);
}