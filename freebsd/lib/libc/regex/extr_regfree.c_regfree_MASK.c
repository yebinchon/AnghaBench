#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct re_guts {scalar_t__ magic; unsigned int ncsets; char* must; char* charjump; char* matchjump; TYPE_1__* sets; int /*<<< orphan*/ * strip; } ;
struct TYPE_5__ {scalar_t__ re_magic; struct re_guts* re_g; } ;
typedef  TYPE_2__ regex_t ;
struct TYPE_4__ {char* ranges; char* wides; char* types; } ;

/* Variables and functions */
 size_t CHAR_MIN ; 
 scalar_t__ MAGIC1 ; 
 scalar_t__ MAGIC2 ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 

void
FUNC1(regex_t *preg)
{
	struct re_guts *g;
	unsigned int i;

	if (preg->re_magic != MAGIC1)	/* oops */
		return;			/* nice to complain, but hard */

	g = preg->re_g;
	if (g == NULL || g->magic != MAGIC2)	/* oops again */
		return;
	preg->re_magic = 0;		/* mark it invalid */
	g->magic = 0;			/* mark it invalid */

	if (g->strip != NULL)
		FUNC0((char *)g->strip);
	if (g->sets != NULL) {
		for (i = 0; i < g->ncsets; i++) {
			FUNC0(g->sets[i].ranges);
			FUNC0(g->sets[i].wides);
			FUNC0(g->sets[i].types);
		}
		FUNC0((char *)g->sets);
	}
	if (g->must != NULL)
		FUNC0(g->must);
	if (g->charjump != NULL)
		FUNC0(&g->charjump[CHAR_MIN]);
	if (g->matchjump != NULL)
		FUNC0(g->matchjump);
	FUNC0((char *)g);
}