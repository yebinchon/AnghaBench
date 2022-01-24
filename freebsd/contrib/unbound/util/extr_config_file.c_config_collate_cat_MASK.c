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
struct config_strlist {char* str; struct config_strlist* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t,char*,char*) ; 
 char* FUNC3 (char*) ; 
 int FUNC4 (char*) ; 

char*
FUNC5(struct config_strlist* list)
{
	size_t total = 0, left;
	struct config_strlist* s;
	char *r, *w;
	if(!list) /* no elements */
		return FUNC3("");
	if(list->next == NULL) /* one element , no newline at end. */
		return FUNC3(list->str);
	/* count total length */
	for(s=list; s; s=s->next)
		total += FUNC4(s->str) + 1; /* len + newline */
	left = total+1; /* one extra for nul at end */
	r = FUNC1(left); 
	if(!r)
		return NULL;
	w = r;
	for(s=list; s; s=s->next) {
		size_t this = FUNC4(s->str);
		if(this+2 > left) { /* sanity check */
			FUNC0(r);
			return NULL;
		}
		FUNC2(w, left, "%s\n", s->str);
		this = FUNC4(w);
		w += this;
		left -= this;
	}
	return r;
}