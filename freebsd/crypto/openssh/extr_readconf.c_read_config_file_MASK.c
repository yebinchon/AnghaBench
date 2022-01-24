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
struct passwd {int dummy; } ;
typedef  int /*<<< orphan*/  Options ;

/* Variables and functions */
 int FUNC0 (char const*,struct passwd*,char const*,char const*,int /*<<< orphan*/ *,int,int*,int /*<<< orphan*/ ) ; 

int
FUNC1(const char *filename, struct passwd *pw, const char *host,
    const char *original_host, Options *options, int flags)
{
	int active = 1;

	return FUNC0(filename, pw, host, original_host,
	    options, flags, &active, 0);
}