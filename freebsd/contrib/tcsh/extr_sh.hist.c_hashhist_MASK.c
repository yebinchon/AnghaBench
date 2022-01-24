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
struct wordent {char* word; struct wordent* next; } ;
struct hashValue {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hashValue*,char) ; 
 int /*<<< orphan*/  FUNC1 (struct hashValue*,char*) ; 
 unsigned int FUNC2 (struct hashValue*) ; 
 int /*<<< orphan*/  FUNC3 (struct hashValue*) ; 

__attribute__((used)) static unsigned
FUNC4(struct wordent *h0)
{
    struct hashValue s;
    struct wordent *firstWord = h0->next;
    struct wordent *h = firstWord;
    unsigned hash = 0;

    FUNC3(&s);
    for (; h != h0; h = h->next) {
        if (h->word[0] == '\n')
            break;                      /* don't hash newline */
        if (h != firstWord)
            FUNC0(&s, ' ');	/* space between words */
	FUNC1(&s, h->word);
    }
    hash = FUNC2(&s);
    /* Zero means no hash value, so never return zero as a hash value. */
    return hash ? hash : 0x7fffffff;	/* prime! */
}