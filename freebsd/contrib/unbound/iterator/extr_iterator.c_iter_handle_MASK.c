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
struct module_qstate {int dummy; } ;
struct iter_qstate {int state; } ;
struct iter_env {int dummy; } ;

/* Variables and functions */
#define  COLLECT_CLASS_STATE 136 
#define  DSNS_FIND_STATE 135 
#define  FINISHED_STATE 134 
#define  INIT_REQUEST_2_STATE 133 
#define  INIT_REQUEST_3_STATE 132 
#define  INIT_REQUEST_STATE 131 
#define  PRIME_RESP_STATE 130 
#define  QUERYTARGETS_STATE 129 
#define  QUERY_RESP_STATE 128 
 int /*<<< orphan*/  VERB_ALGO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (struct module_qstate*,int) ; 
 int FUNC3 (struct module_qstate*,struct iter_qstate*,int) ; 
 int FUNC4 (struct module_qstate*,struct iter_qstate*,int) ; 
 int FUNC5 (struct module_qstate*,struct iter_qstate*,struct iter_env*,int) ; 
 int FUNC6 (struct module_qstate*,struct iter_qstate*,int) ; 
 int FUNC7 (struct module_qstate*,struct iter_qstate*,int) ; 
 int FUNC8 (struct module_qstate*,int) ; 
 int FUNC9 (struct module_qstate*,struct iter_qstate*,int) ; 
 int FUNC10 (struct module_qstate*,struct iter_qstate*,struct iter_env*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12(struct module_qstate* qstate, struct iter_qstate* iq,
	struct iter_env* ie, int id)
{
	int cont = 1;
	while(cont) {
		FUNC11(VERB_ALGO, "iter_handle processing q with state %s",
			FUNC0(iq->state));
		switch(iq->state) {
			case INIT_REQUEST_STATE:
				cont = FUNC5(qstate, iq, ie, id);
				break;
			case INIT_REQUEST_2_STATE:
				cont = FUNC6(qstate, iq, id);
				break;
			case INIT_REQUEST_3_STATE:
				cont = FUNC7(qstate, iq, id);
				break;
			case QUERYTARGETS_STATE:
				cont = FUNC10(qstate, iq, ie, id);
				break;
			case QUERY_RESP_STATE:
				cont = FUNC9(qstate, iq, id);
				break;
			case PRIME_RESP_STATE:
				cont = FUNC8(qstate, id);
				break;
			case COLLECT_CLASS_STATE:
				cont = FUNC2(qstate, id);
				break;
			case DSNS_FIND_STATE:
				cont = FUNC3(qstate, iq, id);
				break;
			case FINISHED_STATE:
				cont = FUNC4(qstate, iq, id);
				break;
			default:
				FUNC1("iterator: invalid state: %d",
					iq->state);
				cont = 0;
				break;
		}
	}
}