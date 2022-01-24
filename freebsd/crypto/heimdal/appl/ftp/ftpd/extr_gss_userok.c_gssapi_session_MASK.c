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
struct gssapi_data {scalar_t__ delegated_cred_handle; } ;
typedef  int /*<<< orphan*/  OM_uint32 ;

/* Variables and functions */
 int /*<<< orphan*/  GSS_C_INITIATE ; 
 scalar_t__ GSS_C_NO_CREDENTIAL ; 
 int /*<<< orphan*/  GSS_C_NO_OID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC4(void *app_data, char *username)
{
    struct gssapi_data *data = app_data;
    OM_uint32 major, minor;
    int ret = 0;

    if (data->delegated_cred_handle != GSS_C_NO_CREDENTIAL) {
        major = FUNC3(&minor, data->delegated_cred_handle,
                               GSS_C_INITIATE, GSS_C_NO_OID,
                               1, 1, NULL, NULL);
        if (FUNC0(major))
            ret = 1;
	FUNC1(NULL, 1);
    }

    FUNC2(&minor, &data->delegated_cred_handle);
    return ret;
}