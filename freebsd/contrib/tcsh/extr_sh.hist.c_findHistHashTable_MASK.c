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
struct wordent {int dummy; } ;
struct Hist {unsigned int Hhash; int /*<<< orphan*/  Hlex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct Hist* deletedHTE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct Hist* emptyHTE ; 
 unsigned int FUNC2 (unsigned int,int) ; 
 scalar_t__ FUNC3 (struct wordent*,int /*<<< orphan*/ *) ; 
 struct Hist** histHashTable ; 
 int histHashTableLength ; 

__attribute__((used)) static struct Hist *
FUNC4(struct wordent *lp, unsigned hashval)
{
    unsigned deleted = 0;		/* number of deleted entries skipped */
    unsigned hi = hashval;
    struct Hist *hp;
    if (!histHashTable)
	return NULL;
    while ((hi = FUNC2(hi, histHashTableLength)),
           (hp = histHashTable[hi]) != emptyHTE) {
        if (hp == deletedHTE)
	    deleted++;
	else if (hp->Hhash == hashval && FUNC3(lp, &(hp->Hlex)))
            return hp;
	if (deleted > (histHashTableLength>>4)) {
	    /* lots of deletes, so we need a sparser table. */
            FUNC1();
            FUNC0(histHashTableLength);
	    return FUNC4(lp, hashval);
	}
        hi++;                           /* linear rehash */
    }
    return NULL;
}