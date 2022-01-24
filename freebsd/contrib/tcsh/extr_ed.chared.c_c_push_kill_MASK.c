#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* buf; int len; } ;
typedef  char Char ;
typedef  TYPE_1__ CStr ;

/* Variables and functions */
 int KillPos ; 
 TYPE_1__* KillRing ; 
 int KillRingLen ; 
 int KillRingMax ; 
 char* STRNULL ; 
 int /*<<< orphan*/  STRall ; 
 int /*<<< orphan*/  STRerase ; 
 int /*<<< orphan*/  STRkilldup ; 
 int /*<<< orphan*/  STRprev ; 
 scalar_t__ FUNC0 (char*,char*,size_t) ; 
 int YankPos ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (char*,int) ; 

__attribute__((used)) static void
FUNC4(Char *start, Char *end)
{
    CStr save, *pos;
    Char *dp, *cp, *kp;
    int len = end - start, i, j, k;

    /* Check for duplicates? */
    if (KillRingLen > 0 && (dp = FUNC2(STRkilldup)) != STRNULL) {
	YankPos = (KillPos - 1 + KillRingLen) % KillRingLen;
	if (FUNC1(dp, STRerase)) {	/* erase earlier one (actually move up) */
	    j = YankPos;
	    for (i = 0; i < KillRingLen; i++) {
		if (FUNC0(KillRing[j].buf, start, (size_t) len) == 0 &&
		    KillRing[j].buf[len] == '\0') {
		    save = KillRing[j];
		    for ( ; i > 0; i--) {
			k = j;
			j = (j + 1) % KillRingLen;
			KillRing[k] = KillRing[j];
		    }
		    KillRing[j] = save;
		    return;
		}
		j = (j - 1 + KillRingLen) % KillRingLen;
	    }
	} else if (FUNC1(dp, STRall)) { /* skip if any earlier */
	    for (i = 0; i < KillRingLen; i++)
		if (FUNC0(KillRing[i].buf, start, (size_t) len) == 0 &&
		    KillRing[i].buf[len] == '\0')
		    return;
	} else if (FUNC1(dp, STRprev)) { /* skip if immediately previous */
	    j = YankPos;
	    if (FUNC0(KillRing[j].buf, start, (size_t) len) == 0 &&
		KillRing[j].buf[len] == '\0')
		return;
	}
    }

    /* No duplicate, go ahead and push */
    len++;			/* need space for '\0' */
    YankPos = KillPos;
    if (KillRingLen < KillRingMax)
	KillRingLen++;
    pos = &KillRing[KillPos];
    KillPos = (KillPos + 1) % KillRingMax;
    if (pos->len < len) {
	pos->buf = FUNC3(pos->buf, len * sizeof(Char));
	pos->len = len;
    }
    cp = start;
    kp = pos->buf;
    while (cp < end)
	*kp++ = *cp++;
    *kp = '\0';
}