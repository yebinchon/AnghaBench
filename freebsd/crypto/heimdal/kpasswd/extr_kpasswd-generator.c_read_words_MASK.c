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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char** FUNC0 (char**,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char const*) ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char const*,char*) ; 
 size_t FUNC7 (char*,char*) ; 

__attribute__((used)) static unsigned
FUNC8 (const char *filename, char ***ret_w)
{
    unsigned n, alloc;
    FILE *f;
    char buf[256];
    char **w = NULL;

    f = FUNC6 (filename, "r");
    if (f == NULL)
	FUNC1 (1, "cannot open %s", filename);
    alloc = n = 0;
    while (FUNC5 (buf, sizeof(buf), f) != NULL) {
	buf[FUNC7(buf, "\r\n")] = '\0';
	if (n >= alloc) {
	    alloc += 16;
	    w = FUNC0 (w, alloc * sizeof(char **));
	}
	w[n++] = FUNC3 (buf);
    }
    *ret_w = w;
    if (n == 0)
	FUNC2(1, "%s is an empty file, no words to try", filename);
    FUNC4(f);
    return n;
}