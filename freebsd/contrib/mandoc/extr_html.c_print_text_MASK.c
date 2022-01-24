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
struct html {int flags; int /*<<< orphan*/ * metaf; scalar_t__ col; } ;

/* Variables and functions */
 int HTML_IGNDELIM ; 
 int HTML_KEEP ; 
 int HTML_NONEWLINE ; 
 int HTML_NONOSPACE ; 
 int HTML_NOSPACE ; 
 int HTML_PREKEEP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct html*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct html*) ; 
 int /*<<< orphan*/  FUNC3 (struct html*) ; 
 int /*<<< orphan*/  FUNC4 (struct html*) ; 
 int /*<<< orphan*/  FUNC5 (struct html*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct html*,char*) ; 

void
FUNC7(struct html *h, const char *word)
{
	if (h->col && (h->flags & HTML_NOSPACE) == 0) {
		if ( ! (HTML_KEEP & h->flags)) {
			if (HTML_PREKEEP & h->flags)
				h->flags |= HTML_KEEP;
			FUNC2(h);
		} else
			FUNC6(h, "&#x00A0;");
	}

	FUNC0(h->metaf == NULL);
	FUNC4(h);
	FUNC3(h);
	if ( ! FUNC1(h, word, NULL, 0)) {
		if ( ! (h->flags & HTML_NONOSPACE))
			h->flags &= ~HTML_NOSPACE;
		h->flags &= ~HTML_NONEWLINE;
	} else
		h->flags |= HTML_NOSPACE | HTML_NONEWLINE;

	if (h->metaf != NULL) {
		FUNC5(h, h->metaf);
		h->metaf = NULL;
	}

	h->flags &= ~HTML_IGNDELIM;
}