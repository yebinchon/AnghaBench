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
struct tag {int closed; size_t tag; scalar_t__ refcnt; int /*<<< orphan*/  next; } ;
struct html {int /*<<< orphan*/  tag; int /*<<< orphan*/  noindent; int /*<<< orphan*/  indent; struct tag* tblt; struct tag* metaf; } ;
struct TYPE_2__ {int flags; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int HTML_INDENT ; 
 int HTML_NLAFTER ; 
 int HTML_NLEND ; 
 int HTML_NOINDENT ; 
 int /*<<< orphan*/  FUNC0 (struct tag*) ; 
 TYPE_1__* htmltags ; 
 int /*<<< orphan*/  FUNC1 (struct html*,char) ; 
 int /*<<< orphan*/  FUNC2 (struct html*) ; 
 int /*<<< orphan*/  FUNC3 (struct html*) ; 
 int /*<<< orphan*/  FUNC4 (struct html*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct html *h, struct tag *tag)
{
	int	 tflags;

	if (tag->closed == 0) {
		tag->closed = 1;
		if (tag == h->metaf)
			h->metaf = NULL;
		if (tag == h->tblt)
			h->tblt = NULL;

		tflags = htmltags[tag->tag].flags;
		if (tflags & HTML_INDENT)
			h->indent--;
		if (tflags & HTML_NOINDENT)
			h->noindent--;
		if (tflags & HTML_NLEND)
			FUNC2(h);
		FUNC3(h);
		FUNC1(h, '<');
		FUNC1(h, '/');
		FUNC4(h, htmltags[tag->tag].name);
		FUNC1(h, '>');
		if (tflags & HTML_NLAFTER)
			FUNC2(h);
	}
	if (tag->refcnt == 0) {
		h->tag = tag->next;
		FUNC0(tag);
	}
}