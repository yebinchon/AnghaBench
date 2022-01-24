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
typedef  int /*<<< orphan*/  uint32_t ;
struct path_ctx {int /*<<< orphan*/  fd; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  rv ;
typedef  int /*<<< orphan*/  len ;
struct TYPE_4__ {int length; int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ heim_idata ;
typedef  int /*<<< orphan*/ * heim_icred ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(void *ctx,
		const heim_idata *req, heim_idata *rep,
		heim_icred *cred)
{
    struct path_ctx *s = ctx;
    uint32_t len = FUNC0(req->length);
    uint32_t rv;
    int retval;

    if (cred)
	*cred = NULL;

    rep->data = NULL;
    rep->length = 0;

    if (FUNC3(s->fd, &len, sizeof(len)) != sizeof(len))
	return -1;
    if (FUNC3(s->fd, req->data, req->length) != (ssize_t)req->length)
	return -1;

    if (FUNC2(s->fd, &len, sizeof(len)) != sizeof(len))
	return -1;
    if (FUNC2(s->fd, &rv, sizeof(rv)) != sizeof(rv))
	return -1;
    retval = FUNC4(rv);

    rep->length = FUNC4(len);
    if (rep->length > 0) {
	rep->data = FUNC1(rep->length);
	if (rep->data == NULL)
	    return -1;
	if (FUNC2(s->fd, rep->data, rep->length) != (ssize_t)rep->length)
	    return -1;
    } else
	rep->data = NULL;

    return retval;
}