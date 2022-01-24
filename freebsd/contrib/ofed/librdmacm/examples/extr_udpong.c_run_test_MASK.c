#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  op; } ;

/* Variables and functions */
 int CTRL_MSG_SIZE ; 
 int FUNC0 (TYPE_1__*,int) ; 
 int FUNC1 (TYPE_1__*,int,int) ; 
 scalar_t__ echo ; 
 int /*<<< orphan*/  end ; 
 TYPE_1__ g_msg ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  msg_op_data ; 
 int /*<<< orphan*/  msg_op_echo ; 
 int /*<<< orphan*/  msg_op_end ; 
 int /*<<< orphan*/  msg_op_start ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  start ; 
 int transfer_count ; 
 int transfer_size ; 

__attribute__((used)) static int FUNC4(void)
{
	int ret, i;

	g_msg.op = msg_op_start;
	ret = FUNC1(&g_msg, CTRL_MSG_SIZE, 1000);
	if (ret != CTRL_MSG_SIZE)
		goto out;

	g_msg.op = echo ? msg_op_echo : msg_op_data;
	FUNC2(&start, NULL);
	for (i = 0; i < transfer_count; i++) {
		ret = echo ? FUNC1(&g_msg, transfer_size, 1) :
			     FUNC0(&g_msg, transfer_size);
		if (ret != transfer_size)
			goto out;
	}

	g_msg.op = msg_op_end;
	ret = FUNC1(&g_msg, CTRL_MSG_SIZE, 1);
	if (ret != CTRL_MSG_SIZE)
		goto out;

	FUNC2(&end, NULL);
	FUNC3();
	ret = 0;

out:
	return ret;
}