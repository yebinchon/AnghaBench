#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int agent_fd; int /*<<< orphan*/  keys; } ;
struct TYPE_7__ {struct TYPE_7__* filename; int /*<<< orphan*/  key; } ;
typedef  TYPE_1__ Identity ;
typedef  TYPE_2__ Authctxt ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  next ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(Authctxt *authctxt)
{
	Identity *id;

	if (authctxt->agent_fd != -1)
		FUNC3(authctxt->agent_fd);
	for (id = FUNC0(&authctxt->keys); id;
	    id = FUNC0(&authctxt->keys)) {
		FUNC1(&authctxt->keys, id, next);
		FUNC4(id->key);
		FUNC2(id->filename);
		FUNC2(id);
	}
}