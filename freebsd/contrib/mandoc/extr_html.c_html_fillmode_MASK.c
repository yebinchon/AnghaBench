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
struct tag {scalar_t__ tag; struct tag* next; } ;
struct html {struct tag* tag; } ;
typedef  enum roff_tok { ____Placeholder_roff_tok } roff_tok ;

/* Variables and functions */
#define  ROFF_fi 130 
#define  ROFF_nf 129 
 scalar_t__ TAG_PRE ; 
#define  TOKEN_NONE 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct html*) ; 
 int /*<<< orphan*/  FUNC2 (struct html*,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct html*,struct tag*) ; 

enum roff_tok
FUNC4(struct html *h, enum roff_tok want)
{
	struct tag	*t;
	enum roff_tok	 had;

	for (t = h->tag; t != NULL; t = t->next)
		if (t->tag == TAG_PRE)
			break;

	had = t == NULL ? ROFF_fi : ROFF_nf;

	if (want != had) {
		switch (want) {
		case ROFF_fi:
			FUNC3(h, t);
			break;
		case ROFF_nf:
			FUNC1(h);
			FUNC2(h, TAG_PRE, "");
			break;
		case TOKEN_NONE:
			break;
		default:
			FUNC0();
		}
	}
	return had;
}