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
typedef  scalar_t__ heim_string_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  _heim_string_object ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char const*,size_t) ; 
 size_t FUNC2 (char const*) ; 

heim_string_t
FUNC3(const char *string)
{
    size_t len = FUNC2(string);
    heim_string_t s;

    s = FUNC0(&_heim_string_object, len + 1);
    if (s)
	FUNC1(s, string, len + 1);
    return s;
}