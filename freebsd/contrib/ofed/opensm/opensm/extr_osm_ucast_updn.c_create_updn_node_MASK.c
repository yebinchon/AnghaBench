#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct updn_node {int rank; int /*<<< orphan*/  id; TYPE_1__* sw; } ;
struct TYPE_3__ {int /*<<< orphan*/  p_node; } ;
typedef  TYPE_1__ osm_switch_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct updn_node* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct updn_node*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct updn_node *FUNC4(osm_switch_t * sw)
{
	struct updn_node *u;

	u = FUNC1(sizeof(*u));
	if (!u)
		return NULL;
	FUNC2(u, 0, sizeof(*u));
	u->sw = sw;
	u->id = FUNC0(FUNC3(sw->p_node));
	u->rank = 0xffffffff;
	return u;
}