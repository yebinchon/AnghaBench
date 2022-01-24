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
struct tag {int dummy; } ;
struct roff_node {scalar_t__ type; } ;
struct roff_meta {TYPE_1__* first; } ;
struct html {int oflags; } ;
struct TYPE_2__ {struct roff_node* child; } ;

/* Variables and functions */
 int HTML_FRAGMENT ; 
 scalar_t__ ROFFT_COMMENT ; 
 int /*<<< orphan*/  TAG_BODY ; 
 int /*<<< orphan*/  TAG_DIV ; 
 int /*<<< orphan*/  TAG_HEAD ; 
 int /*<<< orphan*/  TAG_HTML ; 
 int /*<<< orphan*/  FUNC0 (struct roff_meta const*,struct html*) ; 
 int /*<<< orphan*/  FUNC1 (struct roff_meta const*,struct html*) ; 
 int /*<<< orphan*/  FUNC2 (struct html*,struct roff_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct html*) ; 
 int /*<<< orphan*/  FUNC4 (struct roff_meta const*,struct html*) ; 
 int /*<<< orphan*/  FUNC5 (struct roff_meta const*,struct roff_node*,struct html*) ; 
 struct tag* FUNC6 (struct html*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct html*,struct tag*) ; 

void
FUNC8(void *arg, const struct roff_meta *mdoc)
{
	struct html		*h;
	struct roff_node	*n;
	struct tag		*t;

	h = (struct html *)arg;
	n = mdoc->first->child;

	if ((h->oflags & HTML_FRAGMENT) == 0) {
		FUNC3(h);
		FUNC6(h, TAG_HTML, "");
		if (n != NULL && n->type == ROFFT_COMMENT)
			FUNC2(h, n);
		t = FUNC6(h, TAG_HEAD, "");
		FUNC4(mdoc, h);
		FUNC7(h, t);
		FUNC6(h, TAG_BODY, "");
	}

	FUNC1(mdoc, h);
	t = FUNC6(h, TAG_DIV, "c", "manual-text");
	FUNC5(mdoc, n, h);
	FUNC7(h, t);
	FUNC0(mdoc, h);
	FUNC7(h, NULL);
}