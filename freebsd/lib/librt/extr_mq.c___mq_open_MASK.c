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
struct mq_attr {int dummy; } ;
struct __mq {int oshandle; int /*<<< orphan*/ * node; } ;
typedef  struct __mq* mqd_t ;
typedef  int /*<<< orphan*/  mode_t ;

/* Variables and functions */
 int FUNC0 (char const*,int,int /*<<< orphan*/ ,struct mq_attr const*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (struct __mq*) ; 
 struct __mq* FUNC2 (int) ; 

mqd_t
FUNC3(const char *name, int oflag, mode_t mode,
	const struct mq_attr *attr)
{
	struct __mq *mq;
	int err;

	mq = FUNC2(sizeof(struct __mq));
	if (mq == NULL)
		return (NULL);

	mq->oshandle = FUNC0(name, oflag, mode, attr);
	if (mq->oshandle != -1) {
		mq->node = NULL;
		return (mq);
	}
	err = errno;
	FUNC1(mq);
	errno = err;
	return ((mqd_t)-1L);
}