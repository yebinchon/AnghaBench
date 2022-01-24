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
struct TYPE_3__ {int /*<<< orphan*/  length; int /*<<< orphan*/  value; } ;
typedef  TYPE_1__ gss_buffer_desc ;
typedef  int /*<<< orphan*/  OM_uint32 ;

/* Variables and functions */
 int /*<<< orphan*/  GSS_KRB5_CCACHE_NAME_X ; 
 int /*<<< orphan*/  GSS_S_COMPLETE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 

OM_uint32
FUNC3(OM_uint32 *minor_status, 
		     const char *name,
		     const char **out_name)
{
    gss_buffer_desc buffer;
    OM_uint32 junk;

    if (out_name)
	*out_name = NULL;

    buffer.value = FUNC1(name);
    buffer.length = FUNC2(name);

    FUNC0(&junk, NULL,
	    GSS_KRB5_CCACHE_NAME_X, &buffer);

    return (GSS_S_COMPLETE);
}