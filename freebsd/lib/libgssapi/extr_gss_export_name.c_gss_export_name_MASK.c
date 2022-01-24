#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct _gss_name {int /*<<< orphan*/  gn_mn; } ;
struct _gss_mechanism_name {int /*<<< orphan*/  gmn_name; TYPE_1__* gmn_mech; } ;
typedef  scalar_t__ gss_name_t ;
typedef  int /*<<< orphan*/  gss_buffer_t ;
struct TYPE_2__ {scalar_t__ (* gm_export_name ) (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
typedef  scalar_t__ OM_uint32 ;

/* Variables and functions */
 scalar_t__ GSS_S_NAME_NOT_MN ; 
 struct _gss_mechanism_name* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

OM_uint32
FUNC3(OM_uint32 *minor_status,
    const gss_name_t input_name,
    gss_buffer_t exported_name)
{
	struct _gss_name *name = (struct _gss_name *) input_name;
	struct _gss_mechanism_name *mn;

	FUNC1(exported_name);

	/*
	 * If this name already has any attached MNs, export the first
	 * one, otherwise export based on the first mechanism in our
	 * list.
	 */
	mn = FUNC0(&name->gn_mn);
	if (!mn) {
		*minor_status = 0;
		return (GSS_S_NAME_NOT_MN);
	}

	return mn->gmn_mech->gm_export_name(minor_status,
	    mn->gmn_name, exported_name);
}