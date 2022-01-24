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
 int FUNC0 (void const*,int,char**) ; 
 int FUNC1 (void const*,int,char**) ; 
 int FUNC2 (void const*,int,int,char**) ; 
 scalar_t__ FUNC3 (void const*,int,int*) ; 

__attribute__((used)) static int
FUNC4(const void *data, int len, char **buf)
{
	int count;

	if (len == 0) {
		*buf = NULL;
		return (1);
	}

	if (FUNC3(data, len, &count))
		return (FUNC2(data, len, count, buf));

	else if ((len % 4) == 0)
		return (FUNC1(data, len, buf));

	else
		return (FUNC0(data, len, buf));
}