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
typedef  int /*<<< orphan*/  krb5_context ;
struct TYPE_4__ {scalar_t__ value; scalar_t__ length; } ;
typedef  TYPE_1__ gss_buffer_desc ;
typedef  int /*<<< orphan*/  gss_OID ;
typedef  scalar_t__ OM_uint32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,scalar_t__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,char*) ; 

__attribute__((used)) static void
FUNC4(krb5_context contextp,
	  gss_OID mech, OM_uint32 type, OM_uint32 error)
{
    OM_uint32 new_stat;
    OM_uint32 msg_ctx = 0;
    gss_buffer_desc status_string;
    OM_uint32 ret;

    do {
	ret = FUNC1 (&new_stat,
				  error,
				  type,
				  mech,
				  &msg_ctx,
				  &status_string);
	FUNC3(contextp, "%.*s",
		   (int)status_string.length,
		   (char *)status_string.value);
	FUNC2 (&new_stat, &status_string);
    } while (!FUNC0(ret) && msg_ctx != 0);
}