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
struct TYPE_4__ {int /*<<< orphan*/ * value; scalar_t__ length; } ;
typedef  TYPE_1__ gss_buffer_desc ;
typedef  int /*<<< orphan*/  gss_OID ;
typedef  scalar_t__ OM_uint32 ;

/* Variables and functions */
 int /*<<< orphan*/  GSS_C_GSS_CODE ; 
 int /*<<< orphan*/  GSS_C_MECH_CODE ; 
 scalar_t__ FUNC0 (char**,char*,unsigned long,int,char*,unsigned long,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ FUNC2 (scalar_t__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,TYPE_1__*) ; 

char *
FUNC4(OM_uint32 maj_stat, OM_uint32 min_stat, gss_OID mech)
{
	OM_uint32 disp_min_stat, disp_maj_stat;
	gss_buffer_desc maj_error_message;
	gss_buffer_desc min_error_message;
	OM_uint32 msg_ctx = 0;

	char *ret = NULL;

	maj_error_message.length = 0;
	maj_error_message.value = NULL;
	min_error_message.length = 0;
	min_error_message.value = NULL;

	disp_maj_stat = FUNC2(&disp_min_stat, maj_stat,
					   GSS_C_GSS_CODE,
					   mech, &msg_ctx, &maj_error_message);
	disp_maj_stat = FUNC2(&disp_min_stat, min_stat,
					   GSS_C_MECH_CODE,
					   mech, &msg_ctx, &min_error_message);
	if (FUNC0(&ret, "gss-code: %lu %.*s -- mech-code: %lu %.*s",
		     (unsigned long)maj_stat,
		     (int)maj_error_message.length,
		     (char *)maj_error_message.value,
		     (unsigned long)min_stat,
		     (int)min_error_message.length,
		     (char *)min_error_message.value) < 0 || ret == NULL)
	    FUNC1(1, "malloc");

	FUNC3(&disp_min_stat, &maj_error_message);
	FUNC3(&disp_min_stat, &min_error_message);

	return ret;
}