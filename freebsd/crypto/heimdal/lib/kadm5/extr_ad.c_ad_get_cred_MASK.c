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
typedef  int /*<<< orphan*/  krb5_ccache ;
typedef  scalar_t__ kadm5_ret_t ;
struct TYPE_3__ {int /*<<< orphan*/  ccache; int /*<<< orphan*/  client_name; int /*<<< orphan*/  context; int /*<<< orphan*/  realm; } ;
typedef  TYPE_1__ kadm5_ad_context ;

/* Variables and functions */
 scalar_t__ ENOMEM ; 
 int /*<<< orphan*/  KRB5_TGS_NAME ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char**,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  krb5_prompter_posix ; 

__attribute__((used)) static kadm5_ret_t
FUNC3(kadm5_ad_context *context, const char *password)
{
    kadm5_ret_t ret;
    krb5_ccache cc;
    char *service;

    if (context->ccache)
	return 0;

    FUNC1(&service, "%d/%d@%d", KRB5_TGS_NAME,
	     context->realm, context->realm);
    if (service == NULL)
	return ENOMEM;

    ret = FUNC0(context->context,
				  context->client_name,
				  service,
				  password, krb5_prompter_posix,
				  NULL, NULL, &cc);
    FUNC2(service);
    if(ret)
	return ret; /* XXX */
    context->ccache = cc;
    return 0;
}