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
typedef  int /*<<< orphan*/  isc_result_t ;
typedef  int /*<<< orphan*/  isc_buffer_t ;
typedef  int /*<<< orphan*/  base32_decode_ctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  ISC_R_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static isc_result_t
FUNC4(const char *cstr, const char base[], isc_buffer_t *target) {
	base32_decode_ctx_t ctx;

	FUNC3(&ctx, -1, base, target);
	for (;;) {
		int c = *cstr++;
		if (c == '\0')
			break;
		if (c == ' ' || c == '\t' || c == '\n' || c== '\r')
			continue;
		FUNC0(FUNC1(&ctx, c));
	}
	FUNC0(FUNC2(&ctx));
	return (ISC_R_SUCCESS);
}