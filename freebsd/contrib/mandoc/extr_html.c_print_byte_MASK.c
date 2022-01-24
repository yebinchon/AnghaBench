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
struct html {int flags; int col; int bufcol; char* buf; int indent; } ;

/* Variables and functions */
 int HTML_BUFFER ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct html*) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void
FUNC3(struct html *h, char c)
{
	if ((h->flags & HTML_BUFFER) == 0) {
		FUNC2(c);
		h->col++;
		return;
	}

	if (h->col + h->bufcol < sizeof(h->buf)) {
		h->buf[h->bufcol++] = c;
		return;
	}

	FUNC2('\n');
	h->col = 0;
	FUNC1(h);
	FUNC2(' ');
	FUNC2(' ');
	FUNC0(h->buf, h->bufcol, 1, stdout);
	FUNC2(c);
	h->col = (h->indent + 1) * 2 + h->bufcol + 1;
	h->bufcol = 0;
	h->flags &= ~HTML_BUFFER;
}