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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ * const) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const*,int,size_t,int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC6(const char *path, const u8 *ptr, size_t size)
{
    FILE* const f = FUNC3(path, "wb");
    if (!f) {
        FUNC4(stderr, "failed to open file %s \n", path);
        FUNC0(1);
    }

    size_t written = 0;
    while (written < size) {
        written += FUNC5(ptr+written, 1, size, f);
        if (FUNC2(f)) {
            FUNC4(stderr, "error while writing file %s\n", path);
            FUNC0(1);
    }   }

    FUNC1(f);
}