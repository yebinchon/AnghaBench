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
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const**,unsigned int*) ; 

__attribute__((used)) static unsigned FUNC2(const char** stringPtr) {
    static const char errorMsg[] = "error: numeric value too large";
    unsigned result;
    if (FUNC1(stringPtr, &result)) { FUNC0(errorMsg); }
    return result;
}