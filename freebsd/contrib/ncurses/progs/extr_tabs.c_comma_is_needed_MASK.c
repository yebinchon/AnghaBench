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
 int FALSE ; 
 size_t FUNC0 (char const*) ; 

__attribute__((used)) static bool
FUNC1(const char *source)
{
    bool result = FALSE;

    if (source != 0) {
	size_t len = FUNC0(source);
	if (len != 0)
	    result = (source[len - 1] != ',');
    } else {
	result = FALSE;
    }
    return result;
}