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
typedef  void* uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct ib_ucm_info {int status; uintptr_t data; uintptr_t info; void* info_len; void* data_len; int /*<<< orphan*/  id; } ;
struct ib_cm_id {TYPE_1__* device; int /*<<< orphan*/  handle; } ;
struct TYPE_2__ {int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,struct ib_ucm_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ENODATA ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,void*,int) ; 

__attribute__((used)) static inline int FUNC3(struct ib_cm_id *cm_id,
				 uint32_t type,
				 int status,
				 void *info,
				 uint8_t info_length,
				 void *private_data,
				 uint8_t private_data_len)
{
	struct ib_ucm_info *cmd;
	void *msg;
	int result;
	int size;

	FUNC0(msg, cmd, type, size);
	cmd->id     = cm_id->handle;
	cmd->status = status;

	if (private_data && private_data_len) {
		cmd->data     = (uintptr_t) private_data;
		cmd->data_len = private_data_len;
	}

	if (info && info_length) {
		cmd->info     = (uintptr_t) info;
		cmd->info_len = info_length;
	}

	result = FUNC2(cm_id->device->fd, msg, size);
	if (result != size)
		return (result >= 0) ? FUNC1(ENODATA) : -1;

	return 0;
}