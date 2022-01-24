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
typedef  int /*<<< orphan*/  time_t ;
struct krb5_plugin {int dummy; } ;
struct TYPE_3__ {scalar_t__ minor_version; scalar_t__ (* send_to_kdc ) (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* fini ) (void*) ;int /*<<< orphan*/  (* init ) (int /*<<< orphan*/ ,void**) ;} ;
typedef  TYPE_1__ krb5plugin_send_to_kdc_ftable ;
typedef  int /*<<< orphan*/  krb5_krbhst_info ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_data ;
typedef  int /*<<< orphan*/  krb5_context ;

/* Variables and functions */
 scalar_t__ KRB5_PLUGIN_NO_HANDLE ; 
 int /*<<< orphan*/  KRB5_PLUGIN_SEND_TO_KDC ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  PLUGIN_TYPE_DATA ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct krb5_plugin**) ; 
 int /*<<< orphan*/  FUNC2 (struct krb5_plugin*) ; 
 struct krb5_plugin* FUNC3 (struct krb5_plugin*) ; 
 TYPE_1__* FUNC4 (struct krb5_plugin*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,void**) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 

__attribute__((used)) static krb5_error_code
FUNC9(krb5_context context,
		krb5_krbhst_info *hi,
		time_t timeout,
		const krb5_data *send_data,
		krb5_data *receive)
{
    struct krb5_plugin *list = NULL, *e;
    krb5_error_code ret;

    ret = FUNC1(context, PLUGIN_TYPE_DATA, KRB5_PLUGIN_SEND_TO_KDC, &list);
    if(ret != 0 || list == NULL)
	return KRB5_PLUGIN_NO_HANDLE;

    for (e = list; e != NULL; e = FUNC3(e)) {
	krb5plugin_send_to_kdc_ftable *service;
	void *ctx;

	service = FUNC4(e);
	if (service->minor_version != 0)
	    continue;

	(*service->init)(context, &ctx);
	ret = (*service->send_to_kdc)(context, ctx, hi,
				      timeout, send_data, receive);
	(*service->fini)(ctx);
	if (ret == 0)
	    break;
	if (ret != KRB5_PLUGIN_NO_HANDLE) {
	    FUNC5(context, ret,
				   FUNC0("Plugin send_to_kdc failed to "
				      "lookup with error: %d", ""), ret);
	    break;
	}
    }
    FUNC2(list);
    return KRB5_PLUGIN_NO_HANDLE;
}