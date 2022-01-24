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
 scalar_t__ NV_TYPE_BINARY ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 void const* FUNC1 (void const*,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (void const*) ; 
 scalar_t__ FUNC3 (void const*) ; 

const void *
FUNC4(const void *cookie, size_t *sizep)
{

	if (FUNC3(cookie) != NV_TYPE_BINARY)
		FUNC0(NV_TYPE_BINARY, FUNC2(cookie));
	return (FUNC1(cookie, sizep));
}