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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int SUJ_HASHSIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  allsegs ; 
 int /*<<< orphan*/ * cghash ; 
 int /*<<< orphan*/ * dbhash ; 
 scalar_t__ freeblocks ; 
 scalar_t__ freedir ; 
 scalar_t__ freefrags ; 
 scalar_t__ freeinos ; 
 int /*<<< orphan*/ * fs ; 
 scalar_t__ jbytes ; 
 scalar_t__ jrecs ; 
 int /*<<< orphan*/ * lastblk ; 
 int /*<<< orphan*/ * lastcg ; 
 scalar_t__ oldseq ; 
 int /*<<< orphan*/ * suj_jblocks ; 
 scalar_t__ sujino ; 

__attribute__((used)) static void
FUNC2(void)
{
	int i;

	for (i = 0; i < SUJ_HASHSIZE; i++) {
		FUNC0(&cghash[i]);
		FUNC0(&dbhash[i]);
	}
	lastcg = NULL;
	lastblk = NULL;
	FUNC1(&allsegs);
	oldseq = 0;
	fs = NULL;
	sujino = 0;
	freefrags = 0;
	freeblocks = 0;
	freeinos = 0;
	freedir = 0;
	jbytes = 0;
	jrecs = 0;
	suj_jblocks = NULL;
}