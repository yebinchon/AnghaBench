#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct krb5_krbhst_data {int flags; int /*<<< orphan*/  realm; int /*<<< orphan*/  def_port; } ;
typedef  int /*<<< orphan*/  krb5_krbhst_info ;
typedef  scalar_t__ krb5_error_code ;
typedef  TYPE_1__* krb5_context ;
struct TYPE_8__ {scalar_t__ srv_lookup; } ;

/* Variables and functions */
 int KD_CONFIG ; 
 int KD_CONFIG_EXISTS ; 
 int KD_FALLBACK ; 
 int KD_PLUGIN ; 
 int KD_SRV_TCP ; 
 scalar_t__ KRB5_KDC_UNREACH ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct krb5_krbhst_data*,char*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,struct krb5_krbhst_data*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct krb5_krbhst_data*,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC4 (struct krb5_krbhst_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct krb5_krbhst_data*) ; 
 int /*<<< orphan*/  locate_service_kadmin ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,struct krb5_krbhst_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,struct krb5_krbhst_data*,char*,char*) ; 

__attribute__((used)) static krb5_error_code
FUNC8(krb5_context context,
	       struct krb5_krbhst_data *kd,
	       krb5_krbhst_info **host)
{
    krb5_error_code ret;

    if ((kd->flags & KD_PLUGIN) == 0) {
	FUNC6(context, kd, locate_service_kadmin);
	kd->flags |= KD_PLUGIN;
	if(FUNC3(kd, host))
	    return 0;
    }

    if((kd->flags & KD_CONFIG) == 0) {
	FUNC1(context, kd, "admin_server");
	kd->flags |= KD_CONFIG;
	if(FUNC3(kd, host))
	    return 0;
    }

    if (kd->flags & KD_CONFIG_EXISTS) {
	FUNC0(context, 1,
		    "Configuration exists for realm %s, wont go to DNS",
		    kd->realm);
	return KRB5_KDC_UNREACH;
    }

    if(context->srv_lookup) {
	if((kd->flags & KD_SRV_TCP) == 0) {
	    FUNC7(context, kd, "tcp", "kerberos-adm");
	    kd->flags |= KD_SRV_TCP;
	    if(FUNC3(kd, host))
		return 0;
	}
    }

    if (FUNC4(kd)
	&& (kd->flags & KD_FALLBACK) == 0) {
	ret = FUNC2(context, kd, "kerberos",
				 kd->def_port,
				 FUNC5(kd));
	if(ret)
	    return ret;
	kd->flags |= KD_FALLBACK;
	if(FUNC3(kd, host))
	    return 0;
    }

    FUNC0(context, 0, "No admin entries found for realm %s", kd->realm);

    return KRB5_KDC_UNREACH;	/* XXX */
}