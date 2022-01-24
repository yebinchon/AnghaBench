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
struct edns_option {int opt_len; struct edns_option* next; struct edns_option* opt_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct edns_option*) ; 
 int /*<<< orphan*/  FUNC1 (struct edns_option*) ; 
 void* FUNC2 (struct edns_option*,int) ; 

struct edns_option* FUNC3(struct edns_option* list)
{
	struct edns_option* result = NULL, *cur = NULL, *s;
	while(list) {
		/* copy edns option structure */
		s = FUNC2(list, sizeof(*list));
		if(!s) {
			FUNC0(result);
			return NULL;
		}
		s->next = NULL;

		/* copy option data */
		if(s->opt_data) {
			s->opt_data = FUNC2(s->opt_data, s->opt_len);
			if(!s->opt_data) {
				FUNC1(s);
				FUNC0(result);
				return NULL;
			}
		}

		/* link into list */
		if(cur)
			cur->next = s;
		else	result = s;
		cur = s;

		/* examine next element */
		list = list->next;
	}
	return result;
}