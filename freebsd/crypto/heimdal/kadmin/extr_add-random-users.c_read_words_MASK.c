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
 int WORDBUF_SIZE ; 
 char* FUNC0 (int) ; 
 char** FUNC1 (char**,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char const*,char*) ; 
 unsigned int FUNC7 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,size_t) ; 
 size_t FUNC9 (char*,char*) ; 
 size_t FUNC10 (char*) ; 

__attribute__((used)) static unsigned
FUNC11 (const char *filename, char ***ret_w)
{
    unsigned n, alloc;
    FILE *f;
    char buf[256];
    char **w = NULL;
    char *wbuf = NULL, *wptr = NULL, *wend = NULL;

    f = FUNC6 (filename, "r");
    if (f == NULL)
	FUNC2 (1, "cannot open %s", filename);
    alloc = n = 0;
    while (FUNC5 (buf, sizeof(buf), f) != NULL) {
	size_t len;

	buf[FUNC9(buf, "\r\n")] = '\0';
	if (n >= alloc) {
	    alloc = FUNC7(alloc + 16, alloc * 2);
	    w = FUNC1 (w, alloc * sizeof(char **));
	}
	len = FUNC10(buf);
	if (wptr + len + 1 >= wend) {
	    wptr = wbuf = FUNC0 (WORDBUF_SIZE);
	    wend = wbuf + WORDBUF_SIZE;
	}
	FUNC8 (wptr, buf, len + 1);
	w[n++] = wptr;
	wptr += len + 1;
    }
    if (n == 0)
	FUNC3(1, "%s is an empty file, no words to try", filename);
    *ret_w = w;
    FUNC4(f);
    return n;
}