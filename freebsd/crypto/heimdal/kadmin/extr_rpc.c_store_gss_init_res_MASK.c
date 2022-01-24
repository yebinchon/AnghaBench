#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  krb5_storage ;
typedef  scalar_t__ krb5_error_code ;
struct TYPE_6__ {int /*<<< orphan*/  length; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ krb5_data ;
typedef  TYPE_2__* gss_buffer_t ;
struct TYPE_7__ {int /*<<< orphan*/  length; int /*<<< orphan*/  value; } ;
typedef  int /*<<< orphan*/  OM_uint32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,TYPE_1__) ; 

__attribute__((used)) static krb5_error_code
FUNC2(krb5_storage *sp, krb5_data handle,
		   OM_uint32 maj_stat, OM_uint32 min_stat,
		   uint32_t seq_window, gss_buffer_t gout)
{
    krb5_error_code ret;
    krb5_data out;

    out.data = gout->value;
    out.length = gout->length;

    ret = FUNC1(sp, handle);
    if (ret) return ret;
    ret = FUNC0(sp, maj_stat);
    if (ret) return ret;
    ret = FUNC0(sp, min_stat);
    if (ret) return ret;
    ret = FUNC1(sp, out);
    return ret;
}