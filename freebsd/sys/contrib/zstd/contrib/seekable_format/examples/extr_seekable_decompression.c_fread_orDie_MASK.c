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
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 size_t FUNC2 (void*,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static size_t FUNC4(void* buffer, size_t sizeToRead, FILE* file)
{
    size_t const readSize = FUNC2(buffer, 1, sizeToRead, file);
    if (readSize == sizeToRead) return readSize;   /* good */
    if (FUNC1(file)) return readSize;   /* good, reached end of file */
    /* error */
    FUNC3("fread");
    FUNC0(4);
}