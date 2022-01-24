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
struct handle {scalar_t__ idx; int type; struct handle* next; int /*<<< orphan*/  ptr; } ;
typedef  scalar_t__ int32_t ;
typedef  int /*<<< orphan*/  gss_ctx_id_t ;
typedef  int /*<<< orphan*/  gss_cred_id_t ;
typedef  int /*<<< orphan*/  OM_uint32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct handle*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
#define  handle_context 129 
#define  handle_cred 128 

__attribute__((used)) static void
FUNC4(struct handle **h, int32_t idx)
{
    OM_uint32 min_stat;

    if (idx == 0)
	return;

    while (*h) {
	if ((*h)->idx == idx) {
	    struct handle *p = *h;
	    *h = (*h)->next;
	    switch(p->type) {
	    case handle_context: {
		gss_ctx_id_t c = p->ptr;
		FUNC2(&min_stat, &c, NULL);
		break; }
	    case handle_cred: {
		gss_cred_id_t c = p->ptr;
		FUNC3(&min_stat, &c);
		break; }
	    }
	    FUNC1(p);
	    return;
	}
	h = &((*h)->next);
    }
    FUNC0(1, "tried to delete an unexisting handle");
}