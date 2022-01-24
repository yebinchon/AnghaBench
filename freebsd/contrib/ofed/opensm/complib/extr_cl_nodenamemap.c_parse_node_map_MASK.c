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

/* Variables and functions */
 int FUNC0 (char const*,int (*) (void*,uint64_t,char*),void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC1(const char *file_name,
		   int (*create) (void *, uint64_t, char *), void *cxt)
{
	return FUNC0(file_name, create, cxt, NULL, 0);
}