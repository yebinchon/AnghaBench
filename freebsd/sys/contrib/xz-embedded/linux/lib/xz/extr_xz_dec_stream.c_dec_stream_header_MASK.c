#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__* buf; } ;
struct xz_dec {scalar_t__ check_type; TYPE_1__ temp; } ;
typedef  enum xz_ret { ____Placeholder_xz_ret } xz_ret ;

/* Variables and functions */
 int /*<<< orphan*/  HEADER_MAGIC ; 
 int HEADER_MAGIC_SIZE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ XZ_CHECK_CRC32 ; 
 scalar_t__ XZ_CHECK_MAX ; 
 int XZ_DATA_ERROR ; 
 int XZ_FORMAT_ERROR ; 
 int XZ_OK ; 
 int XZ_OPTIONS_ERROR ; 
 int XZ_UNSUPPORTED_CHECK ; 
 scalar_t__ FUNC1 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (scalar_t__*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum xz_ret FUNC4(struct xz_dec *s)
{
	if (!FUNC2(s->temp.buf, HEADER_MAGIC, HEADER_MAGIC_SIZE))
		return XZ_FORMAT_ERROR;

	if (FUNC3(s->temp.buf + HEADER_MAGIC_SIZE, 2, 0)
			!= FUNC1(s->temp.buf + HEADER_MAGIC_SIZE + 2))
		return XZ_DATA_ERROR;

	if (s->temp.buf[HEADER_MAGIC_SIZE] != 0)
		return XZ_OPTIONS_ERROR;

	/*
	 * Of integrity checks, we support none (Check ID = 0),
	 * CRC32 (Check ID = 1), and optionally CRC64 (Check ID = 4).
	 * However, if XZ_DEC_ANY_CHECK is defined, we will accept other
	 * check types too, but then the check won't be verified and
	 * a warning (XZ_UNSUPPORTED_CHECK) will be given.
	 */
	s->check_type = s->temp.buf[HEADER_MAGIC_SIZE + 1];

#ifdef XZ_DEC_ANY_CHECK
	if (s->check_type > XZ_CHECK_MAX)
		return XZ_OPTIONS_ERROR;

	if (s->check_type > XZ_CHECK_CRC32 && !IS_CRC64(s->check_type))
		return XZ_UNSUPPORTED_CHECK;
#else
	if (s->check_type > XZ_CHECK_CRC32 && !FUNC0(s->check_type))
		return XZ_OPTIONS_ERROR;
#endif

	return XZ_OK;
}