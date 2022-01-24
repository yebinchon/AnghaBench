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
 int EEXIST ; 
 int EINVAL ; 
 int /*<<< orphan*/  S_IRWXU ; 
 int FUNC0 (char* const) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char* const) ; 
 int FUNC3 (char* const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC4 (char const*) ; 

__attribute__((used)) static int FUNC5(char const* indir) {
    char* const dir = FUNC4(indir);
    char* end = dir;
    int ret = 0;
    if (dir == NULL) {
        ret = EINVAL;
        goto out;
    }
    do {
        /* Find the next directory level. */
        for (++end; *end != '\0' && *end != '/'; ++end)
            ;
        /* End the string there, make the directory, and restore the string. */
        char const save = *end;
        *end = '\0';
        int const isdir = FUNC0(dir);
        ret = FUNC3(dir, S_IRWXU);
        *end = save;
        /* Its okay if the directory already exists. */
        if (ret == 0 || (errno == EEXIST && isdir))
            continue;
        ret = errno;
        FUNC1(stderr, "mkdir() failed\n");
        goto out;
    } while (*end != '\0');

    ret = 0;
out:
    FUNC2(dir);
    return ret;
}