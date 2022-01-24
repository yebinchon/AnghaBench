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
struct TYPE_4__ {scalar_t__ length; int /*<<< orphan*/ * value; } ;
struct mg_thread_ctx {TYPE_1__ min_error; TYPE_1__ maj_error; void* min_stat; void* maj_stat; int /*<<< orphan*/ * mech; } ;
struct _gss_mech_switch {int /*<<< orphan*/  gm_mech_oid; void* (* gm_display_status ) (void**,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**,TYPE_1__*) ;} ;
typedef  void* OM_uint32 ;

/* Variables and functions */
 int /*<<< orphan*/  GSS_C_GSS_CODE ; 
 int /*<<< orphan*/  GSS_C_MECH_CODE ; 
 scalar_t__ FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void**,TYPE_1__*) ; 
 struct mg_thread_ctx last_error_context ; 
 void* FUNC2 (void**,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**,TYPE_1__*) ; 
 void* FUNC3 (void**,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**,TYPE_1__*) ; 

void
FUNC4(struct _gss_mech_switch *m, OM_uint32 maj, OM_uint32 min)
{
	OM_uint32 major_status, minor_status;
	OM_uint32 message_content;
	struct mg_thread_ctx *mg;

	mg = &last_error_context;

	FUNC1(&minor_status, &mg->maj_error);
	FUNC1(&minor_status, &mg->min_error);

	mg->mech = &m->gm_mech_oid;
	mg->maj_stat = maj;
	mg->min_stat = min;

	major_status = m->gm_display_status(&minor_status,
	    maj, 
	    GSS_C_GSS_CODE,
	    &m->gm_mech_oid,
	    &message_content,
	    &mg->maj_error);
	if (FUNC0(major_status)) {
		mg->maj_error.value = NULL;
		mg->maj_error.length = 0;
	}
	major_status = m->gm_display_status(&minor_status,
	    min, 
	    GSS_C_MECH_CODE,
	    &m->gm_mech_oid,
	    &message_content,
	    &mg->min_error);
	if (FUNC0(major_status)) {
		mg->min_error.value = NULL;
		mg->min_error.length = 0;
	}
}