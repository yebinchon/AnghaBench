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
 int FUNC0 (char const*,char*,void**) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int FUNC2 (void*) ; 

__attribute__((used)) static int
FUNC3(const char *service,
		 void **ctx)
{
    int ret;

    ret = FUNC0(service, "socket", ctx);
    if (ret)
	return ret;
    ret = FUNC2(*ctx);
    if (ret)
	FUNC1(*ctx);

    return ret;
}