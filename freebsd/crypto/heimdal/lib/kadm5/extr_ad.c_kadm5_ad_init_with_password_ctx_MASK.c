#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  krb5_context ;
typedef  scalar_t__ kadm5_ret_t ;
struct TYPE_11__ {int mask; char const* realm; } ;
typedef  TYPE_1__ kadm5_config_params ;
struct TYPE_12__ {void* client_name; int /*<<< orphan*/ * realm; int /*<<< orphan*/  context; int /*<<< orphan*/  caller; } ;
typedef  TYPE_2__ kadm5_ad_context ;

/* Variables and functions */
 scalar_t__ ENOMEM ; 
 int KADM5_CONFIG_REALM ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  initialize_kadm5_error_table_r ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 void* FUNC10 (char const*) ; 

kadm5_ret_t
FUNC11(krb5_context context,
				const char *client_name,
				const char *password,
				const char *service_name,
				kadm5_config_params *realm_params,
				unsigned long struct_version,
				unsigned long api_version,
				void **server_handle)
{
    kadm5_ret_t ret;
    kadm5_ad_context *ctx;

    ctx = FUNC7(sizeof(*ctx));
    if(ctx == NULL)
	return ENOMEM;
    FUNC8(ctx, 0, sizeof(*ctx));
    FUNC9(ctx);

    ctx->context = context;
    FUNC4 (context, initialize_kadm5_error_table_r);

    ret = FUNC6(ctx->context, client_name, &ctx->caller);
    if(ret) {
	FUNC2(ctx);
	return ret;
    }

    if(realm_params->mask & KADM5_CONFIG_REALM) {
	ret = 0;
	ctx->realm = FUNC10(realm_params->realm);
	if (ctx->realm == NULL)
	    ret = ENOMEM;
    } else
	ret = FUNC5(ctx->context, &ctx->realm);
    if (ret) {
	FUNC2(ctx);
	return ret;
    }

    ctx->client_name = FUNC10(client_name);

    if(password != NULL && *password != '\0')
	ret = FUNC1(ctx, password);
    else
	ret = FUNC1(ctx, NULL);
    if(ret) {
	FUNC3(ctx);
	return ret;
    }

#ifdef OPENLDAP
    ret = _kadm5_ad_connect(ctx);
    if (ret) {
	kadm5_ad_destroy(ctx);
	return ret;
    }
#endif

    *server_handle = ctx;
    return 0;
}