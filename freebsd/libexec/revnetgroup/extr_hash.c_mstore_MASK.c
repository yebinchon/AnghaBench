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
typedef  size_t u_int32_t ;
struct member_entry {char* key; char* domain; struct member_entry* next; struct grouplist* groups; } ;
struct grouplist {char* groupname; struct grouplist* next; } ;

/* Variables and functions */
 size_t FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 char* FUNC3 (char*) ; 

void
FUNC4(struct member_entry *table[], char *key, char *data, char *domain)
{
	struct member_entry *cur, *new;
	struct grouplist *tmp;
	u_int32_t i;

	i = FUNC0(key);
	cur = table[i];

	tmp = (struct grouplist *)FUNC1(sizeof(struct grouplist));
	tmp->groupname = FUNC3(data);
	tmp->next = NULL;

	/* Check if all we have to do is insert a new groupname. */
	while (cur) {
		if (!FUNC2(cur->key, key)) {
			tmp->next = cur->groups;
			cur->groups = tmp;
			return;
		}
		cur = cur->next;
	}

	/* Didn't find a match -- add the whole mess to the table. */
	new = (struct member_entry *)FUNC1(sizeof(struct member_entry));
	new->key = FUNC3(key);
	new->domain = domain ? FUNC3(domain) : "*";
	new->groups = tmp;
	new->next = table[i];
	table[i] = new;

	return;
}