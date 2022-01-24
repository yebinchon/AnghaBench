#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* gss_buffer_t ;
struct TYPE_9__ {int length; scalar_t__ value; } ;
typedef  TYPE_2__ gss_buffer_desc ;
typedef  int /*<<< orphan*/  gss_OID ;
struct TYPE_8__ {char* value; void* length; } ;
typedef  scalar_t__ OM_uint32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
#define  GSS_C_GSS_CODE 129 
#define  GSS_C_MECH_CODE 128 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ GSS_S_BAD_STATUS ; 
 scalar_t__ GSS_S_COMPLETE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const,int,scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (char**,char*,unsigned long,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (scalar_t__*,int /*<<< orphan*/  const,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (char*) ; 
 void* FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

OM_uint32
FUNC13(OM_uint32 *minor_status,
    OM_uint32 status_value,
    int status_type,
    const gss_OID mech_type,
    OM_uint32 *message_content,
    gss_buffer_t status_string)
{
	OM_uint32 major_status;

	FUNC3(status_string);
	*message_content = 0;

	major_status = FUNC4(mech_type, status_type,
					 status_value, status_string);
	if (major_status == GSS_S_COMPLETE) {

		*message_content = 0;
		*minor_status = 0;
		return (GSS_S_COMPLETE);
	}

	*minor_status = 0;
	switch (status_type) {
	case GSS_C_GSS_CODE: {
		char *buf;

		if (FUNC2(status_value))
		    FUNC5(&buf, "%lu", FUNC12(
		        FUNC2(status_value)));
		else
		    FUNC5 (&buf, "%lu %d",
		        FUNC6(FUNC0(status_value)),
			FUNC9(FUNC1(status_value)));

		if (buf == NULL)
			break;

		status_string->length = FUNC11(buf);
		status_string->value  = buf;

		return (GSS_S_COMPLETE);
	}
	case GSS_C_MECH_CODE: {
		OM_uint32 maj_junk, min_junk;
		gss_buffer_desc oid;
		char *buf;

		maj_junk = FUNC7(&min_junk, mech_type, &oid);
		if (maj_junk != GSS_S_COMPLETE) {
			oid.value = FUNC10("unknown");
			oid.length = 7;
		}

		FUNC5 (&buf, "unknown mech-code %lu for mech %.*s",
			  (unsigned long)status_value,
			  (int)oid.length, (char *)oid.value);
		if (maj_junk == GSS_S_COMPLETE)
			FUNC8(&min_junk, &oid);

		if (buf == NULL)
		    break;

		status_string->length = FUNC11(buf);
		status_string->value  = buf;

		return (GSS_S_COMPLETE);
	}
	}
	FUNC3(status_string);
	return (GSS_S_BAD_STATUS);
}