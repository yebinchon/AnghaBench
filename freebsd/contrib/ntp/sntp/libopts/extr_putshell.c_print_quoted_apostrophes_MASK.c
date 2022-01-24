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
 char const APOSTROPHE ; 
 int /*<<< orphan*/  QUOT_APOS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static char const *
FUNC1(char const * str)
{
    while (*str == APOSTROPHE) {
        FUNC0(QUOT_APOS, stdout);
        str++;
    }
    return str;
}