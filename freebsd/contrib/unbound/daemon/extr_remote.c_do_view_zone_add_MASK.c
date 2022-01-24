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
struct worker {TYPE_1__* daemon; } ;
struct view {int /*<<< orphan*/  lock; scalar_t__ local_zones; int /*<<< orphan*/  isfirst; } ;
struct config_file {int dummy; } ;
typedef  int /*<<< orphan*/  lz_cfg ;
struct TYPE_2__ {int /*<<< orphan*/  views; } ;
typedef  int /*<<< orphan*/  RES ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char**) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,struct config_file*) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct config_file*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,...) ; 
 struct view* FUNC7 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC8(RES* ssl, struct worker* worker, char* arg)
{
	char* arg2;
	struct view* v;
	if(!FUNC1(ssl, arg, &arg2))
		return;
	v = FUNC7(worker->daemon->views,
		arg, 1 /* get write lock*/);
	if(!v) {
		FUNC6(ssl,"no view with name: %s\n", arg);
		return;
	}
	if(!v->local_zones) {
		if(!(v->local_zones = FUNC3())){
			FUNC4(&v->lock);
			FUNC6(ssl,"error out of memory\n");
			return;
		}
		if(!v->isfirst) {
			/* Global local-zone is not used for this view,
			 * therefore add defaults to this view-specic
			 * local-zone. */
			struct config_file lz_cfg;
			FUNC5(&lz_cfg, 0, sizeof(lz_cfg));
			FUNC2(v->local_zones, &lz_cfg);
		}
	}
	FUNC0(ssl, v->local_zones, arg2);
	FUNC4(&v->lock);
}