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
struct fileblocks {struct fileblocks* buff; struct fileblocks* next; struct fileblocks* first; } ;
struct fileblock {struct fileblock* buff; struct fileblock* next; struct fileblock* first; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fileblocks*) ; 

__attribute__((used)) static void
FUNC1(struct fileblocks *fileblocks)
{
	while (fileblocks->first != NULL) {
		struct fileblock *b = fileblocks->first;
		fileblocks->first = fileblocks->first->next;
		FUNC0(b->buff);
		FUNC0(b);
	}
	FUNC0(fileblocks);
}