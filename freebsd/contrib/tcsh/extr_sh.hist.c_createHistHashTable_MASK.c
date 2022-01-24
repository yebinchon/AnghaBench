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
struct Hist {unsigned int Hhash; int /*<<< orphan*/  Hlex; struct Hist* Hnext; } ;

/* Variables and functions */
 struct Hist Histlist ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ emptyHTE ; 
 int FUNC2 (int) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ *) ; 
 int histCount ; 
 scalar_t__* histHashTable ; 
 int histHashTableLength ; 
 int histlen ; 
 int /*<<< orphan*/  FUNC4 (struct Hist*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__* FUNC6 (int) ; 

__attribute__((used)) static void
FUNC7(int hlen)
{
    if (hlen == 0) {
	FUNC1();
        return;
    }
    if (hlen < 0) {
	if (histlen <= 0)
	    return;			/* no need for hash table */
	hlen = histlen;
    }
    if (histHashTable != NULL) {
	if (histCount < histHashTableLength * 3 / 4)
	    return;			/* good enough for now */
	FUNC1();		/* too small */
    }
    histHashTableLength = FUNC2(
	hlen > (int)histCount ? hlen : (int)histCount);
    histHashTable = FUNC6(histHashTableLength * sizeof(struct Hist *));
    FUNC5(histHashTable, 0, histHashTableLength * sizeof(struct Hist *));
    FUNC0(histHashTable[0] == emptyHTE);

    /* Now insert all the entries on the history list into the hash table. */
    {
        struct Hist *hp;
        for (hp = &Histlist; (hp = hp->Hnext) != NULL;) {
            unsigned lpHash = FUNC3(&hp->Hlex);
            FUNC0(!hp->Hhash || hp->Hhash == lpHash);
            hp->Hhash = 0;              /* force insert to new hash table */
            FUNC4(hp, lpHash);
        }
    }
}