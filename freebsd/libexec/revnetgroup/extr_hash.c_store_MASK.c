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
struct group_entry {struct group_entry* next; void* data; void* key; } ;

/* Variables and functions */
 size_t FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int) ; 
 void* FUNC2 (char*) ; 

void
FUNC3(struct group_entry *table[], char *key, char *data)
{
	struct group_entry *new;
	u_int32_t i;

	i = FUNC0(key);

	new = (struct group_entry *)FUNC1(sizeof(struct group_entry));
	new->key = FUNC2(key);
	new->data = FUNC2(data);
	new->next = table[i];
	table[i] = new;

	return;
}