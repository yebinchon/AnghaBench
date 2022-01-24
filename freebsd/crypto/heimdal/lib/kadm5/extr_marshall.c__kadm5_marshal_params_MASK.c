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
typedef  int /*<<< orphan*/  krb5_storage ;
typedef  int /*<<< orphan*/  krb5_data ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  kadm5_ret_t ;
struct TYPE_3__ {int mask; int /*<<< orphan*/  realm; } ;
typedef  TYPE_1__ kadm5_config_params ;

/* Variables and functions */
 int KADM5_CONFIG_REALM ; 
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

kadm5_ret_t
FUNC5(krb5_context context,
		      kadm5_config_params *params,
		      krb5_data *out)
{
    krb5_storage *sp = FUNC0();

    FUNC3(sp, params->mask & (KADM5_CONFIG_REALM));

    if(params->mask & KADM5_CONFIG_REALM)
	FUNC4(sp, params->realm);
    FUNC2(sp, out);
    FUNC1(sp);

    return 0;
}