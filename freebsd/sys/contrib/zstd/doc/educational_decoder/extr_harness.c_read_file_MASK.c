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
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*) ; 
 size_t FUNC4 (int /*<<< orphan*/ *,int,size_t const,int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ * const,long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/ * FUNC7 (size_t const) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static size_t FUNC9(const char *path, u8 **ptr)
{
    FILE* const f = FUNC2(path, "rb");
    if (!f) {
        FUNC3(stderr, "failed to open file %s \n", path);
        FUNC0(1);
    }

    FUNC5(f, 0L, SEEK_END);
    size_t const size = (size_t)FUNC6(f);
    FUNC8(f);

    *ptr = FUNC7(size);
    if (!ptr) {
        FUNC3(stderr, "failed to allocate memory to hold %s \n", path);
        FUNC0(1);
    }

    size_t const read = FUNC4(*ptr, 1, size, f);
    if (read != size) {  /* must read everything in one pass */
        FUNC3(stderr, "error while reading file %s \n", path);
        FUNC0(1);
    }

    FUNC1(f);

    return read;
}