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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (void*,char*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 void* FUNC7 (size_t) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 

int
FUNC9(void)
{
        void *buffer;
        size_t buflen = 409600;

        buffer = FUNC7(buflen);
        FUNC2(buffer, buflen);
        FUNC1(buffer, FUNC0(0), FUNC5(buffer, "/"));
        FUNC8(buffer);
        FUNC4(buffer);

        FUNC3(buffer);
        FUNC6(buffer);

        return (0);
}