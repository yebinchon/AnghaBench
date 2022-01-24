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
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (size_t const) ; 
 int /*<<< orphan*/  FUNC2 (char* const,char const*) ; 
 size_t const FUNC3 (char* const) ; 

__attribute__((used)) static char* FUNC4(char const* str1, char const* str2, char const* str3) {
    size_t const size1 = FUNC3(str1);
    size_t const size2 = FUNC3(str2);
    size_t const size3 = str3 == NULL ? 0 : FUNC3(str3);
    size_t const size = size1 + size2 + size3 + 1;
    char* const dst = (char*)FUNC1(size);
    if (dst == NULL)
        return NULL;
    FUNC2(dst, str1);
    FUNC2(dst + size1, str2);
    if (str3 != NULL)
        FUNC2(dst + size1 + size2, str3);
    FUNC0(FUNC3(dst) == size1 + size2 + size3);
    return dst;
}