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
struct stat {int /*<<< orphan*/  st_blksize; } ;

/* Variables and functions */
 size_t BUFSIZ ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (size_t) ; 
 size_t FUNC2 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

void *
FUNC4 (void *oldbuf, size_t *sz, struct stat *st)
{
    size_t new_sz;

    new_sz = BUFSIZ;
#ifdef HAVE_STRUCT_STAT_ST_BLKSIZE
    if (st)
	new_sz = max(BUFSIZ, st->st_blksize);
#endif
    if(new_sz > *sz) {
	if (oldbuf)
	    FUNC0 (oldbuf);
	oldbuf = FUNC1 (new_sz);
	if (oldbuf == NULL) {
	    FUNC3 ("malloc");
	    *sz = 0;
	    return NULL;
	}
	*sz = new_sz;
    }
    return oldbuf;
}