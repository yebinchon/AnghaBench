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
struct wordent {char* word; struct wordent* next; struct wordent* prev; } ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 struct wordent* FUNC1 (int) ; 

void
FUNC2(struct wordent *hp, struct wordent *fp)
{
    struct wordent *wdp;

    wdp = hp;
    fp = fp->next;
    do {
	struct wordent *new;

	new = FUNC1(sizeof(*new));
	new->word = NULL;
	new->prev = wdp;
	new->next = hp;
	wdp->next = new;
	hp->prev = new;
	wdp = new;
	wdp->word = FUNC0(fp->word);
	fp = fp->next;
    } while (wdp->word[0] != '\n');
}