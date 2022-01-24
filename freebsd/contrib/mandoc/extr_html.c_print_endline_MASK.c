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
struct html {scalar_t__ col; int /*<<< orphan*/  flags; scalar_t__ bufcol; int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  HTML_BUFFER ; 
 int /*<<< orphan*/  HTML_NOSPACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 int /*<<< orphan*/  stdout ; 

void
FUNC2(struct html *h)
{
	if (h->col == 0)
		return;

	if (h->bufcol) {
		FUNC1(' ');
		FUNC0(h->buf, h->bufcol, 1, stdout);
		h->bufcol = 0;
	}
	FUNC1('\n');
	h->col = 0;
	h->flags |= HTML_NOSPACE;
	h->flags &= ~HTML_BUFFER;
}