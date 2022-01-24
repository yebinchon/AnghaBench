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
 void* FUNC0 (size_t const) ; 
 int /*<<< orphan*/  FUNC1 (void* const,int /*<<< orphan*/ ,size_t const) ; 
 int /*<<< orphan*/  FUNC2 (void* const,char const*) ; 
 size_t FUNC3 (char const*) ; 

__attribute__((used)) static char* FUNC4(const char* filename)
{
    size_t const inL = FUNC3(filename);
    size_t const outL = inL + 5;
    void* const outSpace = FUNC0(outL);
    FUNC1(outSpace, 0, outL);
    FUNC2(outSpace, filename);
    FUNC2(outSpace, ".zst");
    return (char*)outSpace;
}