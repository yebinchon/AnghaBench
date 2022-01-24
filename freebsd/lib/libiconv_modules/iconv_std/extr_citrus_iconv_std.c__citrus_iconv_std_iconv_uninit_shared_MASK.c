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
struct _citrus_iconv_std_shared {int /*<<< orphan*/  is_srcs; int /*<<< orphan*/  is_dst_encoding; int /*<<< orphan*/  is_src_encoding; } ;
struct _citrus_iconv_shared {struct _citrus_iconv_std_shared* ci_closure; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct _citrus_iconv_std_shared*) ; 

__attribute__((used)) static void
FUNC3(struct _citrus_iconv_shared *ci)
{
	struct _citrus_iconv_std_shared *is = ci->ci_closure;

	if (is == NULL)
		return;

	FUNC0(is->is_src_encoding);
	FUNC0(is->is_dst_encoding);
	FUNC1(&is->is_srcs);
	FUNC2(is);
}