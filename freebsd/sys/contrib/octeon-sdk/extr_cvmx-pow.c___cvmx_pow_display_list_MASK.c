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
typedef  int /*<<< orphan*/  uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*,...) ; 

__attribute__((used)) static void FUNC2(const char *name, int name_param, int valid, int has_one, uint64_t head, uint64_t tail)
{
    FUNC1(name, name_param);
    FUNC1(": ");
    if (valid)
    {
        if (has_one)
            FUNC1("One element index=%d(0x%x)\n", FUNC0(head), FUNC0(head));
        else
            FUNC1("Multiple elements head=%d(0x%x) tail=%d(0x%x)\n", FUNC0(head), FUNC0(head), FUNC0(tail), FUNC0(tail));
    }
    else
        FUNC1("Empty\n");
}