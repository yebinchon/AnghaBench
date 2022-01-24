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
struct stat {scalar_t__ st_size; } ;
typedef  scalar_t__ off_t ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_fsize ; 
 int /*<<< orphan*/  ERROR_largeFile ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char const*,struct stat*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static size_t FUNC4(const char *filename)
{
    struct stat st;
    if (FUNC3(filename, &st) != 0) {
        /* error */
        FUNC2(filename);
        FUNC0(ERROR_fsize);
    }

    off_t const fileSize = st.st_size;
    size_t const size = (size_t)fileSize;
    /* 1. fileSize should be non-negative,
     * 2. if off_t -> size_t type conversion results in discrepancy,
     *    the file size is too large for type size_t.
     */
    if ((fileSize < 0) || (fileSize != (off_t)size)) {
        FUNC1(stderr, "%s : filesize too large \n", filename);
        FUNC0(ERROR_largeFile);
    }
    return size;
}