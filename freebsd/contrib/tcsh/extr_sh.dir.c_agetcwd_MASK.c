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
typedef  int /*<<< orphan*/  Char ;

/* Variables and functions */
 int ERANGE ; 
 size_t MAXPATHLEN ; 
 int /*<<< orphan*/ * FUNC0 (char*) ; 
 int errno ; 
 int /*<<< orphan*/ * FUNC1 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (size_t) ; 
 char* FUNC4 (char*,size_t) ; 

__attribute__((used)) static Char *
FUNC5(void)
{
    char *buf;
    Char *cwd;
    size_t len;

    len = MAXPATHLEN;
    buf = FUNC3(len);
    while (FUNC1(buf, len) == NULL) {
	int err;

	err = errno;
	if (err != ERANGE) {
	    FUNC2(buf);
	    errno = err;
	    return NULL;
	}
	len *= 2;
	buf = FUNC4(buf, len);
    }
    if (*buf == '\0') {
	FUNC2(buf);
	return NULL;
    }
    cwd = FUNC0(buf);
    FUNC2(buf);
    return cwd;
}