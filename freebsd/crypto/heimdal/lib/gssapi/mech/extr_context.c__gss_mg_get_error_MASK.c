#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {size_t length; int /*<<< orphan*/  value; } ;
struct TYPE_5__ {size_t length; int /*<<< orphan*/  value; } ;
struct mg_thread_ctx {int maj_stat; int min_stat; TYPE_2__ min_error; TYPE_1__ maj_error; int /*<<< orphan*/  mech; } ;
typedef  TYPE_3__* gss_buffer_t ;
typedef  int /*<<< orphan*/ * gss_OID ;
struct TYPE_7__ {size_t length; int /*<<< orphan*/ * value; } ;
typedef  int OM_uint32 ;

/* Variables and functions */
#define  GSS_C_GSS_CODE 129 
#define  GSS_C_MECH_CODE 128 
 int GSS_S_BAD_STATUS ; 
 int GSS_S_COMPLETE ; 
 struct mg_thread_ctx* FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ * const) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 

OM_uint32
FUNC4(const gss_OID mech, OM_uint32 type,
		  OM_uint32 value, gss_buffer_t string)
{
    struct mg_thread_ctx *mg;

    mg = FUNC0();
    if (mg == NULL)
	return GSS_S_BAD_STATUS;

#if 0
    /*
     * We cant check the mech here since a pseudo-mech might have
     * called an lower layer and then the mech info is all broken
     */
    if (mech != NULL && gss_oid_equal(mg->mech, mech) == 0)
	return GSS_S_BAD_STATUS;
#endif

    switch (type) {
    case GSS_C_GSS_CODE: {
	if (value != mg->maj_stat || mg->maj_error.length == 0)
	    break;
	string->value = FUNC2(mg->maj_error.length + 1);
	string->length = mg->maj_error.length;
	FUNC3(string->value, mg->maj_error.value, mg->maj_error.length);
        ((char *) string->value)[string->length] = '\0';
	return GSS_S_COMPLETE;
    }
    case GSS_C_MECH_CODE: {
	if (value != mg->min_stat || mg->min_error.length == 0)
	    break;
	string->value = FUNC2(mg->min_error.length + 1);
	string->length = mg->min_error.length;
	FUNC3(string->value, mg->min_error.value, mg->min_error.length);
        ((char *) string->value)[string->length] = '\0';
	return GSS_S_COMPLETE;
    }
    }
    string->value = NULL;
    string->length = 0;
    return GSS_S_BAD_STATUS;
}