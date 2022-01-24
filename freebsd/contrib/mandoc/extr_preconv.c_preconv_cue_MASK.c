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
struct buf {char* buf; size_t sz; } ;

/* Variables and functions */
 int MPARSE_LATIN1 ; 
 int MPARSE_UTF8 ; 
 char* FUNC0 (char const*,char,size_t) ; 
 scalar_t__ FUNC1 (char const*,char*,int) ; 
 scalar_t__ FUNC2 (char const*,char*,int) ; 

int
FUNC3(const struct buf *b, size_t offset)
{
	const char	*ln, *eoln, *eoph;
	size_t		 sz, phsz;

	ln = b->buf + offset;
	sz = b->sz - offset;

	/* Look for the end-of-line. */

	if (NULL == (eoln = FUNC0(ln, '\n', sz)))
		eoln = ln + sz;

	/* Check if we have the correct header/trailer. */

	if ((sz = (size_t)(eoln - ln)) < 10 ||
	    FUNC1(ln, ".\\\" -*-", 7) || FUNC1(eoln - 3, "-*-", 3))
		return MPARSE_UTF8 | MPARSE_LATIN1;

	/* Move after the header and adjust for the trailer. */

	ln += 7;
	sz -= 10;

	while (sz > 0) {
		while (sz > 0 && ' ' == *ln) {
			ln++;
			sz--;
		}
		if (0 == sz)
			break;

		/* Find the end-of-phrase marker (or eoln). */

		if (NULL == (eoph = FUNC0(ln, ';', sz)))
			eoph = eoln - 3;
		else
			eoph++;

		/* Only account for the "coding" phrase. */

		if ((phsz = eoph - ln) < 7 ||
		    FUNC2(ln, "coding:", 7)) {
			sz -= phsz;
			ln += phsz;
			continue;
		}

		sz -= 7;
		ln += 7;

		while (sz > 0 && ' ' == *ln) {
			ln++;
			sz--;
		}
		if (0 == sz)
			return 0;

		/* Check us against known encodings. */

		if (phsz > 4 && !FUNC2(ln, "utf-8", 5))
			return MPARSE_UTF8;
		if (phsz > 10 && !FUNC2(ln, "iso-latin-1", 11))
			return MPARSE_LATIN1;
		return 0;
	}
	return MPARSE_UTF8 | MPARSE_LATIN1;
}