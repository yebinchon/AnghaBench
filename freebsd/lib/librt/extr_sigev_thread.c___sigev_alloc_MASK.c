#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sigevent {scalar_t__ sigev_notify_attributes; int /*<<< orphan*/  sigev_notify_function; int /*<<< orphan*/  sigev_value; } ;
struct sigev_node {int sn_type; int /*<<< orphan*/  sn_attr; TYPE_1__* sn_tn; int /*<<< orphan*/  sn_gen; int /*<<< orphan*/  sn_func; int /*<<< orphan*/  sn_value; } ;
struct TYPE_2__ {int /*<<< orphan*/  tn_refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  PTHREAD_CREATE_DETACHED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ *) ; 
 struct sigev_node* FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sigev_node*) ; 
 int /*<<< orphan*/  memory_order_relaxed ; 
 int /*<<< orphan*/  sigev_generation ; 
 TYPE_1__* FUNC9 (int) ; 

struct sigev_node *
FUNC10(int type, const struct sigevent *evp, struct sigev_node *prev,
	int usedefault)
{
	struct sigev_node *sn;

	sn = FUNC7(1, sizeof(*sn));
	if (sn != NULL) {
		sn->sn_value = evp->sigev_value;
		sn->sn_func  = evp->sigev_notify_function;
		sn->sn_gen   = FUNC5(&sigev_generation, 1,
		    memory_order_relaxed);
		sn->sn_type  = type;
		FUNC3(&sn->sn_attr);
		FUNC4(&sn->sn_attr, PTHREAD_CREATE_DETACHED);
		if (evp->sigev_notify_attributes)
			FUNC6(evp->sigev_notify_attributes, &sn->sn_attr);
		if (prev) {
			FUNC0();
			prev->sn_tn->tn_refcount++;
			FUNC1();
			sn->sn_tn = prev->sn_tn;
		} else {
			sn->sn_tn = FUNC9(usedefault);
			if (sn->sn_tn == NULL) {
				FUNC2(&sn->sn_attr);
				FUNC8(sn);
				sn = NULL;
			}
		}
	}
	return (sn);
}