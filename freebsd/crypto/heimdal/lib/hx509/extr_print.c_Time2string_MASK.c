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
struct tm {int dummy; } ;
typedef  int /*<<< orphan*/  Time ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 struct tm* FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,struct tm*) ; 

__attribute__((used)) static int
FUNC4(const Time *T, char **str)
{
    time_t t;
    char *s;
    struct tm *tm;

    *str = NULL;
    t = FUNC0(T);
    tm = FUNC1 (&t);
    s = FUNC2(30);
    if (s == NULL)
	return ENOMEM;
    FUNC3(s, 30, "%Y-%m-%d %H:%M:%S", tm);
    *str = s;
    return 0;
}