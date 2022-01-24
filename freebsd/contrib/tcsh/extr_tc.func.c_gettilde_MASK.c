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
struct tildecache {char const* user; char* home; int /*<<< orphan*/  hlen; } ;
typedef  char Char ;

/* Variables and functions */
 int FUNC0 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char const* FUNC2 (char const*) ; 
 int TILINCR ; 
 char* FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct tildecache*,int,int,int /*<<< orphan*/ ) ; 
 struct tildecache* tcache ; 
 int /*<<< orphan*/  tildecompare ; 
 int tlength ; 
 int tsize ; 
 struct tildecache* FUNC5 (int) ; 
 struct tildecache* FUNC6 (struct tildecache*,int) ; 

Char   *
FUNC7(const Char *us)
{
    struct tildecache *bp1, *bp2, *bp;
    Char *hd;

    /* Ignore NIS special names */
    if (*us == '+' || *us == '-')
	return NULL;

    if (tcache == NULL)
	tcache = FUNC5(TILINCR * sizeof(struct tildecache));
    /*
     * Binary search
     */
    for (bp1 = tcache, bp2 = tcache + tlength; bp1 < bp2;) {
	int i;

	bp = bp1 + ((bp2 - bp1) >> 1);
	if ((i = *us - *bp->user) == 0 && (i = FUNC0(us, bp->user)) == 0)
	    return (bp->home);
	if (i < 0)
	    bp2 = bp;
	else
	    bp1 = bp + 1;
    }
    /*
     * Not in the cache, try to get it from the passwd file
     */
    hd = FUNC3(us);
    if (hd == NULL)
	return NULL;

    /*
     * Update the cache
     */
    tcache[tlength].user = FUNC2(us);
    tcache[tlength].home = hd;
    tcache[tlength++].hlen = FUNC1(hd);

    FUNC4(tcache, tlength, sizeof(struct tildecache), tildecompare);

    if (tlength == tsize) {
	tsize += TILINCR;
	tcache = FUNC6(tcache, tsize * sizeof(struct tildecache));
    }
    return (hd);
}