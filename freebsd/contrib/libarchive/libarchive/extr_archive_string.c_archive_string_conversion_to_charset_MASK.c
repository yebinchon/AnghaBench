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
struct archive_string_conv {int dummy; } ;
struct archive {int dummy; } ;

/* Variables and functions */
 int SCONV_BEST_EFFORT ; 
 int SCONV_TO_CHARSET ; 
 int /*<<< orphan*/  FUNC0 (struct archive*) ; 
 struct archive_string_conv* FUNC1 (struct archive*,int /*<<< orphan*/ ,char const*,int) ; 

struct archive_string_conv *
FUNC2(struct archive *a, const char *charset,
    int best_effort)
{
	int flag = SCONV_TO_CHARSET;

	if (best_effort)
		flag |= SCONV_BEST_EFFORT;
	return (FUNC1(a, FUNC0(a), charset, flag));
}