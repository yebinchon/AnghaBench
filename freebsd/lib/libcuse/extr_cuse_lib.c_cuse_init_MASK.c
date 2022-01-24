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
typedef  int /*<<< orphan*/  pthread_mutexattr_t ;

/* Variables and functions */
 int CUSE_ERR_INVALID ; 
 int CUSE_ERR_NOT_LOADED ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  PTHREAD_MUTEX_RECURSIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ f_cuse ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  h_cuse ; 
 int /*<<< orphan*/  h_cuse_entered ; 
 int /*<<< orphan*/  m_cuse ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC6(void)
{
	pthread_mutexattr_t attr;

	f_cuse = FUNC2("/dev/cuse", O_RDWR);
	if (f_cuse < 0) {
		if (FUNC1("cuse") == 0)
			return (CUSE_ERR_NOT_LOADED);
		else
			return (CUSE_ERR_INVALID);
	}
	FUNC4(&attr);
	FUNC5(&attr, PTHREAD_MUTEX_RECURSIVE);
	FUNC3(&m_cuse, &attr);

	FUNC0(&h_cuse);
	FUNC0(&h_cuse_entered);

	return (0);
}