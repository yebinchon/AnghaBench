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
struct mansearch {int dummy; } ;
struct expr {struct expr* next; struct expr* child; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXPR_OR ; 
 void* FUNC0 (struct mansearch const*,int,char**,int*) ; 
 struct expr* FUNC1 (int,int) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

__attribute__((used)) static struct expr *
FUNC4(const struct mansearch *search, int argc, char *argv[], int *argi)
{
	struct expr	*parent, *child;
	int		 needterm, nested;

	if ((nested = *argi) == argc)
		return NULL;
	needterm = 1;
	parent = child = NULL;
	while (*argi < argc) {
		if (FUNC2(")", argv[*argi]) == 0) {
			if (needterm)
				FUNC3("missing term "
				    "before closing parenthesis");
			needterm = 0;
			if (nested)
				break;
			FUNC3("ignoring unmatched right parenthesis");
			++*argi;
			continue;
		}
		if (FUNC2("-o", argv[*argi]) == 0) {
			if (needterm) {
				if (*argi > 0)
					FUNC3("ignoring -o after %s",
					    argv[*argi - 1]);
				else
					FUNC3("ignoring initial -o");
			}
			needterm = 1;
			++*argi;
			continue;
		}
		needterm = 0;
		if (child == NULL) {
			child = FUNC0(search, argc, argv, argi);
			continue;
		}
		if (parent == NULL) {
			parent = FUNC1(1, sizeof(*parent));
			parent->type = EXPR_OR;
			parent->next = NULL;
			parent->child = child;
		}
		child->next = FUNC0(search, argc, argv, argi);
		child = child->next;
	}
	if (needterm && *argi)
		FUNC3("ignoring trailing %s", argv[*argi - 1]);
	return parent == NULL ? child : parent;
}