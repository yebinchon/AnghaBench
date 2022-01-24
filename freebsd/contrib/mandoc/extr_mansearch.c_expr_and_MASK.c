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
 int /*<<< orphan*/  EXPR_AND ; 
 void* FUNC0 (struct mansearch const*,int,char**,int*) ; 
 struct expr* FUNC1 (int,int) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

__attribute__((used)) static struct expr *
FUNC4(const struct mansearch *search, int argc, char *argv[], int *argi)
{
	struct expr	*parent, *child;
	int		 needterm;

	needterm = 1;
	parent = child = NULL;
	while (*argi < argc) {
		if (FUNC2(")", argv[*argi]) == 0) {
			if (needterm)
				FUNC3("missing term "
				    "before closing parenthesis");
			needterm = 0;
			break;
		}
		if (FUNC2("-o", argv[*argi]) == 0)
			break;
		if (FUNC2("-a", argv[*argi]) == 0) {
			if (needterm) {
				if (*argi > 0)
					FUNC3("ignoring -a after %s",
					    argv[*argi - 1]);
				else
					FUNC3("ignoring initial -a");
			}
			needterm = 1;
			++*argi;
			continue;
		}
		if (needterm == 0)
			break;
		if (child == NULL) {
			child = FUNC0(search, argc, argv, argi);
			if (child != NULL)
				needterm = 0;
			continue;
		}
		needterm = 0;
		if (parent == NULL) {
			parent = FUNC1(1, sizeof(*parent));
			parent->type = EXPR_AND;
			parent->next = NULL;
			parent->child = child;
		}
		child->next = FUNC0(search, argc, argv, argi);
		if (child->next != NULL) {
			child = child->next;
			needterm = 0;
		}
	}
	if (needterm && *argi)
		FUNC3("ignoring trailing %s", argv[*argi - 1]);
	return parent == NULL ? child : parent;
}