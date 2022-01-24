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
 int /*<<< orphan*/  FUNC0 (int,char*,unsigned long) ; 
 char* FUNC1 (size_t) ; 
 size_t FUNC2 (int,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,size_t) ; 
 scalar_t__ FUNC4 (char*) ; 

__attribute__((used)) static size_t
FUNC5 (char **res, int argc, char **argv)
{
    int i;
    size_t len = 0;
    char *tmp;

    for (i = 0; i < argc; ++i)
	len += FUNC4(argv[i]) + 1;
    len = FUNC2 (1, len);
    tmp = FUNC1 (len);
    if (tmp == NULL)
	FUNC0 (1, "malloc %lu failed", (unsigned long)len);

    *tmp = '\0';
    for (i = 0; i < argc - 1; ++i) {
	FUNC3 (tmp, argv[i], len);
	FUNC3 (tmp, " ", len);
    }
    if (argc > 0)
	FUNC3 (tmp, argv[argc-1], len);
    *res = tmp;
    return len;
}