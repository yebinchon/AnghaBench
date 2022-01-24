#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct Hist {unsigned int Hhash; } ;
struct TYPE_2__ {int deleted; int /*<<< orphan*/  removeCount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct Hist* deletedHTE ; 
 struct Hist* emptyHTE ; 
 size_t FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 TYPE_1__ hashStats ; 
 struct Hist** histHashTable ; 
 int /*<<< orphan*/  histHashTableLength ; 

__attribute__((used)) static void
FUNC2(struct Hist *np)
{
    unsigned hi = np->Hhash;
    if (!histHashTable || !hi)
        return;                         /* no hash table or not on it */
    /* find desired entry */
    while ((hi = FUNC1(hi, histHashTableLength)),
           histHashTable[hi] != emptyHTE) {
        if (np == histHashTable[hi]) {
	    unsigned i;
	    unsigned deletes = 0;
	    histHashTable[hi] = deletedHTE; /* dummy, but non-zero entry */
	    /* now peek ahead to see if the dummies are really necessary. */
	    i = 1;
	    while (histHashTable[FUNC1(hi+i, histHashTableLength)] ==
		   deletedHTE)
		i++;
	    if (histHashTable[FUNC1(hi+i, histHashTableLength)] ==
		emptyHTE) {
		/* dummies are no longer necessary placeholders. */
		deletes = i;
		while (i-- > 0) {
		    histHashTable[FUNC1(hi+i, histHashTableLength)] =
			emptyHTE;
		}
	    }
	    hashStats.deleted += 1 - deletes; /* delta deleted entries */
	    hashStats.removeCount++;
            return;
        }
        hi++;                           /* linear rehash */
    }
    FUNC0(!"Hist entry not found in hash table");
}