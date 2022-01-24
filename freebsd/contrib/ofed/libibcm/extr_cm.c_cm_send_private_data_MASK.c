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
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct ib_ucm_private_data {uintptr_t data; scalar_t__ len; int /*<<< orphan*/  id; } ;
struct ib_cm_id {TYPE_1__* device; int /*<<< orphan*/  handle; } ;
struct TYPE_2__ {int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,struct ib_ucm_private_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ENODATA ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,void*,int) ; 

__attribute__((used)) static inline int FUNC3(struct ib_cm_id *cm_id,
				       uint32_t type,
				       void *private_data,
				       uint8_t private_data_len)
{
	struct ib_ucm_private_data *cmd;
	void *msg;
	int result;
	int size;

	FUNC0(msg, cmd, type, size);
	cmd->id = cm_id->handle;

	if (private_data && private_data_len) {
		cmd->data = (uintptr_t) private_data;
		cmd->len  = private_data_len;
	}

	result = FUNC2(cm_id->device->fd, msg, size);
	if (result != size)
		return (result >= 0) ? FUNC1(ENODATA) : -1;

	return 0;
}