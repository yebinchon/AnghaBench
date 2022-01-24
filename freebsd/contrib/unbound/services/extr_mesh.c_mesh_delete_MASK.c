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
struct TYPE_2__ {int /*<<< orphan*/  root; scalar_t__ count; } ;
struct mesh_area {int /*<<< orphan*/  qbuf_bak; int /*<<< orphan*/  histogram; TYPE_1__ all; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mesh_area*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void 
FUNC4(struct mesh_area* mesh)
{
	if(!mesh)
		return;
	/* free all query states */
	while(mesh->all.count)
		FUNC1(mesh->all.root);
	FUNC3(mesh->histogram);
	FUNC2(mesh->qbuf_bak);
	FUNC0(mesh);
}