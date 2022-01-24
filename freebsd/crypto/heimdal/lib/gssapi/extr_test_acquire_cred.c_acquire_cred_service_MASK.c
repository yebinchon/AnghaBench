#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ gss_name_t ;
typedef  int /*<<< orphan*/  gss_cred_id_t ;
struct TYPE_3__ {int /*<<< orphan*/  length; int /*<<< orphan*/  value; } ;
typedef  TYPE_1__ gss_buffer_desc ;
typedef  int /*<<< orphan*/  gss_OID_set ;
typedef  int /*<<< orphan*/  gss_OID ;
typedef  int /*<<< orphan*/  OM_uint32 ;

/* Variables and functions */
 scalar_t__ GSS_C_NO_NAME ; 
 int /*<<< orphan*/  GSS_C_NO_OID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (char const*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static gss_cred_id_t
FUNC12(const char *service,
		     gss_OID nametype,
		     gss_OID_set oidset,
		     int flags)
{
    OM_uint32 major_status, minor_status;
    gss_cred_id_t cred_handle;
    OM_uint32 time_rec;
    gss_buffer_desc name_buffer;
    gss_name_t name = GSS_C_NO_NAME;

    if (service) {
	name_buffer.value = FUNC9(service);
	name_buffer.length = FUNC10(service);

	major_status = FUNC4(&minor_status,
				       &name_buffer,
				       nametype,
				       &name);
	if (FUNC0(major_status))
	    FUNC1(1, "import_name failed");
    }

    major_status = FUNC3(&minor_status,
				    name,
				    0,
				    oidset,
				    flags,
				    &cred_handle,
				    NULL,
				    &time_rec);
    if (FUNC0(major_status)) {
	FUNC11("acquire_cred failed: %s",
	     FUNC7(major_status, minor_status, GSS_C_NO_OID));
    } else {
	FUNC8(time_rec);
	FUNC5(&minor_status, &cred_handle);
    }

    if (name != GSS_C_NO_NAME)
	FUNC6(&minor_status, &name);

    if (FUNC0(major_status))
	FUNC2(1);

    return cred_handle;
}