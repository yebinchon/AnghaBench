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
typedef  int /*<<< orphan*/  time_t ;

/* Variables and functions */
 int FUNC0 (unsigned char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 

__attribute__((used)) static int
FUNC2(void)
{
    const char *str = "760520140000Z";
    size_t size;
    time_t t;
    int ret;

    ret = FUNC0((const unsigned char*)str, FUNC1(str),
				   &t, &size);
    if (ret)
	return 1;
    return 0;
}