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
struct stat {size_t st_size; int /*<<< orphan*/  st_mode; } ;
typedef  size_t ssize_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 size_t BLOCKSIZE ; 
 scalar_t__ EPIPE ; 
 int HASHBYTES ; 
 scalar_t__ MAP_FAILED ; 
 int /*<<< orphan*/  MAP_SHARED ; 
 int /*<<< orphan*/  MS_ASYNC ; 
 int /*<<< orphan*/  PROT_READ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (char*,size_t*,struct stat*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct stat*) ; 
 scalar_t__ hash ; 
 void* FUNC4 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC5 (void*,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (void*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (char) ; 
 int FUNC8 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 void* FUNC10 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

__attribute__((used)) static int
FUNC12 (FILE * from, FILE * to)
{
    static size_t bufsize;
    static char *buf;
    int n;
    int bytes = 0;
    int werr = 0;
    int hashbytes = HASHBYTES;
    struct stat st;

#if defined(HAVE_MMAP) && !defined(NO_MMAP)
    void *chunk;
    size_t off;

#define BLOCKSIZE (1024 * 1024 * 10)

#ifndef MAP_FAILED
#define MAP_FAILED (-1)
#endif

    if (fstat (fileno (from), &st) == 0 && S_ISREG (st.st_mode)) {
	/*
	 * mmap zero bytes has potential of loosing, don't do it.
	 */
	if (st.st_size == 0)
	    return 0;
	off = 0;
	while (off != st.st_size) {
	    size_t len;
	    ssize_t res;

	    len = st.st_size - off;
	    if (len > BLOCKSIZE)
		len = BLOCKSIZE;

	    chunk = mmap (0, len, PROT_READ, MAP_SHARED, fileno (from), off);
	    if (chunk == (void *) MAP_FAILED) {
		if (off == 0) /* try read if mmap doesn't work */
		    goto try_read;
		break;
	    }

	    res = sec_write (fileno (to), chunk, len);
	    if (msync (chunk, len, MS_ASYNC))
		warn ("msync");
	    if (munmap (chunk, len) < 0)
		warn ("munmap");
	    sec_fflush (to);
	    if (res != len)
		return off;
	    off += len;
	}
	return off;
    }
try_read:
#endif

    buf = FUNC1 (buf, &bufsize,
			FUNC3 (FUNC2 (from), &st) >= 0 ? &st : NULL);
    if (buf == NULL)
	return -1;

    while ((n = FUNC8 (FUNC2 (from), buf, bufsize)) > 0) {
	werr = FUNC10 (FUNC2 (to), buf, n);
	if (werr < 0)
	    break;
	bytes += werr;
	while (hash && bytes > hashbytes) {
	    FUNC7 ('#');
	    hashbytes += HASHBYTES;
	}
    }
    FUNC9 (to);
    if (n < 0)
	FUNC11 ("local");

    if (werr < 0) {
	if (errno != EPIPE)
	    FUNC11 ("netout");
	bytes = -1;
    }
    return bytes;
}