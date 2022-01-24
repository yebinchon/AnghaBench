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
struct evbuffer_chain {struct evbuffer_chain* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct evbuffer_chain*) ; 

__attribute__((used)) static void
FUNC1(struct evbuffer_chain *chain)
{
	struct evbuffer_chain *next;
	for (; chain; chain = next) {
		next = chain->next;
		FUNC0(chain);
	}
}