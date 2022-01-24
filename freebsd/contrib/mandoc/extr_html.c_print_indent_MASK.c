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
struct html {size_t col; scalar_t__ noindent; int indent; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  HTML_NOSPACE ; 
 int /*<<< orphan*/  FUNC0 (char) ; 

__attribute__((used)) static void
FUNC1(struct html *h)
{
	size_t	 i;

	if (h->col)
		return;

	if (h->noindent == 0) {
		h->col = h->indent * 2;
		for (i = 0; i < h->col; i++)
			FUNC0(' ');
	}
	h->flags &= ~HTML_NOSPACE;
}