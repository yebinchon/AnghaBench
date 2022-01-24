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
typedef  int /*<<< orphan*/  xo_xff_flags_t ;
typedef  int /*<<< orphan*/  xo_handle_t ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  XFF_NO_OUTPUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC2 (xo_handle_t *xop, unsigned encode_only,
		      const char *value, ssize_t vlen,
		      const char *fmt, ssize_t flen, xo_xff_flags_t flags)
{
    if (encode_only)
	flags |= XFF_NO_OUTPUT;

    if (vlen == 0)
	FUNC1(xop, NULL, fmt, flen, flags);
    else if (!encode_only)
	FUNC0(xop, value, vlen, flags);
}