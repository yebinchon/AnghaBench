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
typedef  size_t ptrdiff_t ;
typedef  int Char ;

/* Variables and functions */
 size_t MALLOC_INCR ; 
 size_t MALLOC_SURPLUS ; 
 int const QUOTE ; 
 int /*<<< orphan*/  FUNC0 (char*,int const) ; 
 char* FUNC1 (size_t) ; 
 char* FUNC2 (char*,size_t) ; 

char   *
FUNC3(const Char *src)
{
    static char *sdst = NULL;
    static size_t dstsize = 0;
    char *dst, *edst;

    if (src == NULL)
	return (NULL);

    if (sdst == NULL) {
	dstsize = MALLOC_INCR;
	sdst = FUNC1((dstsize + MALLOC_SURPLUS) * sizeof(char));
    }
    dst = sdst;
    edst = &dst[dstsize];
    while (*src) {
	if (*src & QUOTE) {
	    *dst++ = '\\';
	    if (dst == edst) {
		dstsize += MALLOC_INCR;
		sdst = FUNC2(sdst,
				(dstsize + MALLOC_SURPLUS) * sizeof(char));
		edst = &sdst[dstsize];
		dst = &edst[-MALLOC_INCR];
	    }
	}
	dst += FUNC0(dst, *src);
	src++;
	if (dst >= edst) {
	    ptrdiff_t i = dst - edst;
	    dstsize += MALLOC_INCR;
	    sdst = FUNC2(sdst, (dstsize + MALLOC_SURPLUS) * sizeof(char));
	    edst = &sdst[dstsize];
	    dst = &edst[-MALLOC_INCR + i];
	}
    }
    *dst = 0;
    return (sdst);
}