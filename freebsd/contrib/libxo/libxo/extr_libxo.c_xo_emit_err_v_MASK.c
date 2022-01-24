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
typedef  int /*<<< orphan*/  va_list ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 

void
FUNC3 (int eval, int code, const char *fmt, va_list vap)
{
    FUNC1(NULL, 0, code, fmt, vap);
    FUNC2();
    FUNC0(eval);
}