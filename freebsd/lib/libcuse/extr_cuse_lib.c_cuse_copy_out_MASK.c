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
struct cuse_dev_entered {scalar_t__ is_local; int /*<<< orphan*/  cmd; } ;
struct cuse_data_chunk {uintptr_t local_ptr; uintptr_t peer_ptr; int length; } ;

/* Variables and functions */
 int CUSE_ERR_FAULT ; 
 int CUSE_ERR_INVALID ; 
 int /*<<< orphan*/  CUSE_IOCTL_WRITE_DATA ; 
 int /*<<< orphan*/  FUNC0 (char*,void const*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct cuse_dev_entered* FUNC2 () ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ f_cuse ; 
 int FUNC3 (scalar_t__,int /*<<< orphan*/ ,struct cuse_data_chunk*) ; 
 int /*<<< orphan*/  FUNC4 (void*,void const*,int) ; 

int
FUNC5(const void *src, void *user_dst, int len)
{
	struct cuse_data_chunk info;
	struct cuse_dev_entered *pe;
	int error;

	if ((f_cuse < 0) || (len < 0))
		return (CUSE_ERR_INVALID);

	pe = FUNC2();
	if (pe == NULL)
		return (CUSE_ERR_INVALID);

	FUNC0("cuse: copy_out(%p,%p,%d), cmd = %d = %s\n",
	    src, user_dst, len, pe->cmd, FUNC1(pe->cmd));

	if (pe->is_local) {
		FUNC4(user_dst, src, len);
	} else {
		info.local_ptr = (uintptr_t)src;
		info.peer_ptr = (uintptr_t)user_dst;
		info.length = len;

		error = FUNC3(f_cuse, CUSE_IOCTL_WRITE_DATA, &info);
		if (error) {
			FUNC0("cuse: copy_out() error = %d\n", errno);
			return (CUSE_ERR_FAULT);
		}
	}
	return (0);
}