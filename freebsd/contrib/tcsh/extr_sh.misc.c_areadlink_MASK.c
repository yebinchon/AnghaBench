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
typedef  int ssize_t ;

/* Variables and functions */
 int MAXPATHLEN ; 
 int errno ; 
 int FUNC0 (char const*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (size_t) ; 
 char* FUNC3 (char*,int) ; 

char *
FUNC4(const char *path)
{
    char *buf;
    size_t size;
    ssize_t res;

    size = MAXPATHLEN + 1;
    buf = FUNC2(size);
    while ((size_t)(res = FUNC0(path, buf, size)) == size) {
	size *= 2;
	buf = FUNC3(buf, size);
    }
    if (res == -1) {
	int err;

	err = errno;
	FUNC1(buf);
	errno = err;
	return NULL;
    }
    buf[res] = '\0';
    return FUNC3(buf, res + 1);
}