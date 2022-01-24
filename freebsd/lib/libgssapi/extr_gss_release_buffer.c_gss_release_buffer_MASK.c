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
struct TYPE_4__ {scalar_t__ value; } ;
typedef  scalar_t__ OM_uint32 ;

/* Variables and functions */
 scalar_t__ GSS_S_COMPLETE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

OM_uint32
FUNC2(OM_uint32 *minor_status,
		   gss_buffer_t buffer)
{

	*minor_status = 0;
	if (buffer->value)
		FUNC1(buffer->value);
	FUNC0(buffer);

	return (GSS_S_COMPLETE);
}