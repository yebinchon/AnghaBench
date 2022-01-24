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
struct _citrus_iconv {int dummy; } ;
typedef  scalar_t__ iconv_t ;
typedef  int /*<<< orphan*/  iconv_allocation_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,char const*,struct _citrus_iconv*) ; 

int
FUNC1(const char *out, const char *in, iconv_allocation_t *ptr)
{
	struct _citrus_iconv *handle;

	handle = (struct _citrus_iconv *)ptr;
	return ((FUNC0(out, in, handle) == (iconv_t)-1) ? -1 : 0);
}