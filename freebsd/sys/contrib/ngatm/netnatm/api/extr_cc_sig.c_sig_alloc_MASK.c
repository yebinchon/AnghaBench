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
typedef  void* u_int ;
struct ccsig {void* arg2; void* arg1; void* sig; void* target; void* has_msg; void* type; } ;
struct ccdata {int /*<<< orphan*/  free_sigs; } ;

/* Variables and functions */
 struct ccsig* FUNC0 (int) ; 
 struct ccsig* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct ccsig*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ccdata*,char*,void*,void*) ; 
 int /*<<< orphan*/  link ; 

__attribute__((used)) static /* __inline */ struct ccsig *
FUNC4(struct ccdata *cc, u_int type, void *target, u_int has_msg,
    u_int sig, void *arg1, u_int arg2)
{
	struct ccsig *s;

	if ((s = FUNC1(&cc->free_sigs)) == NULL) {
		s = FUNC0(sizeof(struct ccsig));
		if (s == NULL) {
			FUNC3(cc, "signal %u/%u lost - ENOMEM", type, sig);
			return (NULL);
		}
	} else
		FUNC2(&cc->free_sigs, s, link);

	s->type = type;
	s->has_msg = has_msg;
	s->target = target;
	s->sig = sig;
	s->arg1 = arg1;
	s->arg2 = arg2;

	return (s);
}