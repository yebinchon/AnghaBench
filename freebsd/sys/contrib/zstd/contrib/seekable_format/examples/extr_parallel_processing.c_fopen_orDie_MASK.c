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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 

__attribute__((used)) static FILE* FUNC3(const char *filename, const char *instruction)
{
    FILE* const inFile = FUNC1(filename, instruction);
    if (inFile) return inFile;
    /* error */
    FUNC2(filename);
    FUNC0(3);
}