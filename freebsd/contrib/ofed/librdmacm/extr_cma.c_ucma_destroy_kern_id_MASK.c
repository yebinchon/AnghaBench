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
typedef  int /*<<< orphan*/  uint32_t ;
struct ucma_abi_destroy_id_resp {int events_reported; } ;
struct ucma_abi_destroy_id {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ucma_abi_destroy_id*,int,int /*<<< orphan*/ ,struct ucma_abi_destroy_id_resp*,int) ; 
 int /*<<< orphan*/  DESTROY_ID ; 
 int /*<<< orphan*/  ENODATA ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ucma_abi_destroy_id_resp*,int) ; 
 int FUNC3 (int,struct ucma_abi_destroy_id*,int) ; 

__attribute__((used)) static int FUNC4(int fd, uint32_t handle)
{
	struct ucma_abi_destroy_id_resp resp;
	struct ucma_abi_destroy_id cmd;
	int ret;
	
	FUNC0(&cmd, sizeof cmd, DESTROY_ID, &resp, sizeof resp);
	cmd.id = handle;

	ret = FUNC3(fd, &cmd, sizeof cmd);
	if (ret != sizeof cmd)
		return (ret >= 0) ? FUNC1(ENODATA) : -1;

	FUNC2(&resp, sizeof resp);

	return resp.events_reported;
}