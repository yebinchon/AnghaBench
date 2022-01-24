#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct krb5_krbhst_data {int flags; int /*<<< orphan*/  realm; int /*<<< orphan*/  (* get_next ) (TYPE_1__*,struct krb5_krbhst_data*,int /*<<< orphan*/ **) ;int /*<<< orphan*/  def_port; int /*<<< orphan*/  port; } ;
typedef  int /*<<< orphan*/  krb5_krbhst_info ;
typedef  int /*<<< orphan*/  krb5_error_code ;
typedef  TYPE_1__* krb5_context ;
struct TYPE_9__ {scalar_t__ srv_lookup; } ;

/* Variables and functions */
 int KD_CONFIG ; 
 int KD_CONFIG_EXISTS ; 
 int KD_PLUGIN ; 
 int KD_SRV_TCP ; 
 int KD_SRV_UDP ; 
 int /*<<< orphan*/  KRB5_KDC_UNREACH ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct krb5_krbhst_data*,char*) ; 
 scalar_t__ FUNC2 (struct krb5_krbhst_data*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct krb5_krbhst_data*,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC4 (struct krb5_krbhst_data*) ; 
 int /*<<< orphan*/  locate_service_krb524 ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,struct krb5_krbhst_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,struct krb5_krbhst_data*,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,struct krb5_krbhst_data*,int /*<<< orphan*/ **) ; 

__attribute__((used)) static krb5_error_code
FUNC8(krb5_context context,
		struct krb5_krbhst_data *kd,
		krb5_krbhst_info **host)
{
    if ((kd->flags & KD_PLUGIN) == 0) {
	FUNC5(context, kd, locate_service_krb524);
	kd->flags |= KD_PLUGIN;
	if(FUNC2(kd, host))
	    return 0;
    }

    if((kd->flags & KD_CONFIG) == 0) {
	FUNC1(context, kd, "krb524_server");
	if(FUNC2(kd, host))
	    return 0;
	kd->flags |= KD_CONFIG;
    }

    if (kd->flags & KD_CONFIG_EXISTS) {
	FUNC0(context, 1,
		    "Configuration exists for realm %s, wont go to DNS",
		    kd->realm);
	return KRB5_KDC_UNREACH;
    }

    if(context->srv_lookup) {
	if((kd->flags & KD_SRV_UDP) == 0) {
	    FUNC6(context, kd, "udp", "krb524");
	    kd->flags |= KD_SRV_UDP;
	    if(FUNC2(kd, host))
		return 0;
	}

	if((kd->flags & KD_SRV_TCP) == 0) {
	    FUNC6(context, kd, "tcp", "krb524");
	    kd->flags |= KD_SRV_TCP;
	    if(FUNC2(kd, host))
		return 0;
	}
    }

    /* no matches -> try kdc */

    if (FUNC4(kd)) {
	kd->flags = 0;
	kd->port  = kd->def_port;
	kd->get_next = kdc_get_next;
	return (*kd->get_next)(context, kd, host);
    }

    FUNC0(context, 0, "No kpasswd entries found for realm %s", kd->realm);

    return KRB5_KDC_UNREACH;
}