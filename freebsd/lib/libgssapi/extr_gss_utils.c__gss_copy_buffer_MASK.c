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
typedef  TYPE_1__* gss_buffer_t ;
struct TYPE_4__ {size_t length; int /*<<< orphan*/  value; } ;
typedef  scalar_t__ OM_uint32 ;

/* Variables and functions */
 scalar_t__ ENOMEM ; 
 scalar_t__ GSS_S_COMPLETE ; 
 scalar_t__ GSS_S_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 

OM_uint32
FUNC2(OM_uint32 *minor_status,
    const gss_buffer_t from_buf, gss_buffer_t to_buf)
{
	size_t len = from_buf->length;

	*minor_status = 0;
	to_buf->value = FUNC0(len);
	if (!to_buf->value) {
		*minor_status = ENOMEM;
		to_buf->length = 0;
		return GSS_S_FAILURE;
	}
	to_buf->length = len;
	FUNC1(to_buf->value, from_buf->value, len);
	return (GSS_S_COMPLETE);
}