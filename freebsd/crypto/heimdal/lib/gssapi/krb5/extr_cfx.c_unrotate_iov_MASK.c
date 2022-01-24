#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_4__ {size_t length; int /*<<< orphan*/ * value; } ;
struct TYPE_5__ {TYPE_1__ buffer; int /*<<< orphan*/  type; } ;
typedef  TYPE_2__ gss_iov_buffer_desc ;
typedef  int /*<<< orphan*/  OM_uint32 ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ GSS_IOV_BUFFER_TYPE_DATA ; 
 scalar_t__ GSS_IOV_BUFFER_TYPE_PADDING ; 
 scalar_t__ GSS_IOV_BUFFER_TYPE_TRAILER ; 
 int /*<<< orphan*/  GSS_S_COMPLETE ; 
 int /*<<< orphan*/  GSS_S_FAILURE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC4 (size_t,size_t) ; 

__attribute__((used)) static OM_uint32
FUNC5(OM_uint32 *minor_status, size_t rrc, gss_iov_buffer_desc *iov, int iov_count)
{
    uint8_t *p, *q;
    size_t len = 0, skip;
    int i;

    for (i = 0; i < iov_count; i++)
	if (FUNC0(iov[i].type) == GSS_IOV_BUFFER_TYPE_DATA ||
	    FUNC0(iov[i].type) == GSS_IOV_BUFFER_TYPE_PADDING ||
	    FUNC0(iov[i].type) == GSS_IOV_BUFFER_TYPE_TRAILER)
	    len += iov[i].buffer.length;

    p = FUNC2(len);
    if (p == NULL) {
	*minor_status = ENOMEM;
	return GSS_S_FAILURE;
    }
    q = p;

    /* copy up */

    for (i = 0; i < iov_count; i++) {
	if (FUNC0(iov[i].type) == GSS_IOV_BUFFER_TYPE_DATA ||
	    FUNC0(iov[i].type) == GSS_IOV_BUFFER_TYPE_PADDING ||
	    FUNC0(iov[i].type) == GSS_IOV_BUFFER_TYPE_TRAILER)
	{
	    FUNC3(q, iov[i].buffer.value, iov[i].buffer.length);
	    q += iov[i].buffer.length;
	}
    }
    FUNC1((size_t)(q - p) == len);

    /* unrotate first part */
    q = p + rrc;
    skip = rrc;
    for (i = 0; i < iov_count; i++) {
	if (FUNC0(iov[i].type) == GSS_IOV_BUFFER_TYPE_DATA ||
	    FUNC0(iov[i].type) == GSS_IOV_BUFFER_TYPE_PADDING ||
	    FUNC0(iov[i].type) == GSS_IOV_BUFFER_TYPE_TRAILER)
	{
	    if (iov[i].buffer.length <= skip) {
		skip -= iov[i].buffer.length;
	    } else {
		FUNC3(((uint8_t *)iov[i].buffer.value) + skip, q, iov[i].buffer.length - skip);
		q += iov[i].buffer.length - skip;
		skip = 0;
	    }
	}
    }
    /* copy trailer */
    q = p;
    skip = rrc;
    for (i = 0; i < iov_count; i++) {
	if (FUNC0(iov[i].type) == GSS_IOV_BUFFER_TYPE_DATA ||
	    FUNC0(iov[i].type) == GSS_IOV_BUFFER_TYPE_PADDING ||
	    FUNC0(iov[i].type) == GSS_IOV_BUFFER_TYPE_TRAILER)
	{
	    FUNC3(q, iov[i].buffer.value, FUNC4(iov[i].buffer.length, skip));
	    if (iov[i].buffer.length > skip)
		break;
	    skip -= iov[i].buffer.length;
	    q += iov[i].buffer.length;
	}
    }
    return GSS_S_COMPLETE;
}