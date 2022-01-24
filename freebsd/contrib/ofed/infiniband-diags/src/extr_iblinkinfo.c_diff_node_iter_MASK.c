#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct iter_diff_data {char* fabric1_prefix; int diff_flags; char* fabric2_prefix; int /*<<< orphan*/  fabric2; } ;
struct TYPE_9__ {scalar_t__ type; scalar_t__ smalid; scalar_t__ numports; int /*<<< orphan*/  nodedesc; int /*<<< orphan*/  guid; } ;
typedef  TYPE_1__ ibnd_node_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,TYPE_1__*) ; 
 int DIFF_FLAG_LID ; 
 int DIFF_FLAG_NODE_DESCRIPTION ; 
 int DIFF_FLAG_PORT_CONNECTION ; 
 int DIFF_FLAG_PORT_STATE ; 
 scalar_t__ IB_NODE_SWITCH ; 
 int /*<<< orphan*/  IB_SMP_DATA_SIZE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__*,int*,struct iter_diff_data*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,scalar_t__) ; 

void FUNC7(ibnd_node_t * fabric1_node, void *iter_user_data)
{
	struct iter_diff_data *data = iter_user_data;
	ibnd_node_t *fabric2_node;
	int head_print = 0;

	FUNC0("DEBUG: fabric1_node %p\n", fabric1_node);

	fabric2_node = FUNC2(data->fabric2, fabric1_node->guid);
	if (!fabric2_node)
		FUNC4(fabric1_node, data->fabric1_prefix);
	else if (data->diff_flags &
		 (DIFF_FLAG_PORT_CONNECTION | DIFF_FLAG_PORT_STATE
		  | DIFF_FLAG_LID | DIFF_FLAG_NODE_DESCRIPTION)) {

		if ((fabric1_node->type == IB_NODE_SWITCH
		     && data->diff_flags & DIFF_FLAG_LID
		     && fabric1_node->smalid != fabric2_node->smalid) ||
		    (data->diff_flags & DIFF_FLAG_NODE_DESCRIPTION
		     && FUNC3(fabric1_node->nodedesc, fabric2_node->nodedesc,
			       IB_SMP_DATA_SIZE))) {
			FUNC5(fabric1_node,
					    NULL,
					    data->fabric1_prefix);
			FUNC5(fabric2_node,
					    NULL,
					    data->fabric2_prefix);
			head_print++;
		}

		if (fabric1_node->numports != fabric2_node->numports) {
			FUNC5(fabric1_node,
					    &head_print,
					    NULL);
			FUNC6("%snumports = %d\n", data->fabric1_prefix,
			       fabric1_node->numports);
			FUNC6("%snumports = %d\n", data->fabric2_prefix,
			       fabric2_node->numports);
			return;
		}

		FUNC1(fabric1_node, fabric2_node,
				  &head_print, data);
	}
}