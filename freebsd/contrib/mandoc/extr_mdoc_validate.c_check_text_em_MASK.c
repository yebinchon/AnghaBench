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
struct roff_node {scalar_t__ type; char* string; } ;
struct roff_man {TYPE_1__* last; } ;
struct TYPE_2__ {struct roff_node* next; struct roff_node* prev; } ;

/* Variables and functions */
 int /*<<< orphan*/  MANDOCERR_DASHDASH ; 
 scalar_t__ ROFFT_TEXT ; 
 int FUNC0 (unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int FUNC2 (char*) ; 

__attribute__((used)) static void
FUNC3(struct roff_man *mdoc, int ln, int pos, char *p)
{
	const struct roff_node	*np, *nn;
	char			*cp;

	np = mdoc->last->prev;
	nn = mdoc->last->next;

	/* Look for em-dashes wrongly encoded as "--". */

	for (cp = p; *cp != '\0'; cp++) {
		if (cp[0] != '-' || cp[1] != '-')
			continue;
		cp++;

		/* Skip input sequences of more than two '-'. */

		if (cp[1] == '-') {
			while (cp[1] == '-')
				cp++;
			continue;
		}

		/* Skip "--" directly attached to something else. */

		if ((cp - p > 1 && cp[-2] != ' ') ||
		    (cp[1] != '\0' && cp[1] != ' '))
			continue;

		/* Require a letter right before or right afterwards. */

		if ((cp - p > 2 ?
		     FUNC0((unsigned char)cp[-3]) :
		     np != NULL &&
		     np->type == ROFFT_TEXT &&
		     *np->string != '\0' &&
		     FUNC0((unsigned char)np->string[
		       FUNC2(np->string) - 1])) ||
		    (cp[1] != '\0' && cp[2] != '\0' ?
		     FUNC0((unsigned char)cp[2]) :
		     nn != NULL &&
		     nn->type == ROFFT_TEXT &&
		     FUNC0((unsigned char)*nn->string))) {
			FUNC1(MANDOCERR_DASHDASH,
			    ln, pos + (int)(cp - p) - 1, NULL);
			break;
		}
	}
}