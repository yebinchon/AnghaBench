#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ **** wint_t ;
struct TYPE_6__ {int v; scalar_t__ h; } ;
typedef  TYPE_2__ coord_t ;
struct TYPE_5__ {TYPE_2__ t_size; } ;
struct TYPE_7__ {TYPE_1__ el_terminal; } ;
typedef  TYPE_3__ EditLine ;

/* Variables and functions */
 void* FUNC0 (size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ******) ; 

__attribute__((used)) static wint_t **
FUNC2(EditLine *el)
{
	wint_t **b;
	coord_t *c = &el->el_terminal.t_size;
	int i;

	b =  FUNC0((size_t)(c->v + 1), sizeof(*b));
	if (b == NULL)
		return NULL;
	for (i = 0; i < c->v; i++) {
		b[i] = FUNC0((size_t)(c->h + 1), sizeof(**b));
		if (b[i] == NULL) {
			while (--i >= 0)
				FUNC1(&b[i]);
			FUNC1(b);
			return NULL;
		}
	}
	b[c->v] = NULL;
	return b;
}