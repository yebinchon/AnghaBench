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
struct iaddr {int dummy; } ;
struct iaddrlist {struct iaddrlist* next; struct iaddr addr; } ;
struct client_config {struct iaddrlist* reject_list; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int COMMA ; 
 int SEMI ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct iaddrlist* FUNC1 (int) ; 
 int FUNC2 (char**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct iaddr*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void
FUNC6(FILE *cfile, struct client_config *config)
{
	int			 token;
	char			*val;
	struct iaddr		 addr;
	struct iaddrlist	*list;

	do {
		if (!FUNC3(cfile, &addr)) {
			FUNC4("expecting IP address.");
			FUNC5(cfile);
			return;
		}

		list = FUNC1(sizeof(struct iaddrlist));
		if (!list)
			FUNC0("no memory for reject list!");

		list->addr = addr;
		list->next = config->reject_list;
		config->reject_list = list;

		token = FUNC2(&val, cfile);
	} while (token == COMMA);

	if (token != SEMI) {
		FUNC4("expecting semicolon.");
		FUNC5(cfile);
	}
}