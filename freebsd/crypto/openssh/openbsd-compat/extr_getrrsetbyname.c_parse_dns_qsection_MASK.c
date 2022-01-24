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
typedef  int /*<<< orphan*/  u_char ;
struct dns_query {void* class; void* type; int /*<<< orphan*/ * name; struct dns_query* next; } ;
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 int /*<<< orphan*/  INT16SZ ; 
 int MAXDNAME ; 
 void* FUNC0 (int /*<<< orphan*/  const*) ; 
 struct dns_query* FUNC1 (int,int) ; 
 int FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct dns_query*) ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 

__attribute__((used)) static struct dns_query *
FUNC5(const u_char *answer, int size, const u_char **cp, int count)
{
	struct dns_query *head, *curr, *prev;
	int i, length;
	char name[MAXDNAME];

	for (i = 1, head = NULL, prev = NULL; i <= count; i++, prev = curr) {

		/* allocate and initialize struct */
		curr = FUNC1(1, sizeof(struct dns_query));
		if (curr == NULL) {
			FUNC3(head);
			return (NULL);
		}
		if (head == NULL)
			head = curr;
		if (prev != NULL)
			prev->next = curr;

		/* name */
		length = FUNC2(answer, answer + size, *cp, name,
		    sizeof(name));
		if (length < 0) {
			FUNC3(head);
			return (NULL);
		}
		curr->name = FUNC4(name);
		if (curr->name == NULL) {
			FUNC3(head);
			return (NULL);
		}
		*cp += length;

		/* type */
		curr->type = FUNC0(*cp);
		*cp += INT16SZ;

		/* class */
		curr->class = FUNC0(*cp);
		*cp += INT16SZ;
	}

	return (head);
}