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
typedef  void* hx509_verify_ctx ;
typedef  int /*<<< orphan*/  hx509_context ;
typedef  int /*<<< orphan*/ * hx509_certs ;
typedef  int /*<<< orphan*/  hx509_cert ;
typedef  int /*<<< orphan*/  heim_oid ;
struct TYPE_4__ {int /*<<< orphan*/  data; int /*<<< orphan*/  length; } ;
typedef  TYPE_1__ heim_octet_string ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  context ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC4 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static int
FUNC7(hx509_context hxcontext, void *ctx, hx509_cert cert)
{
    heim_octet_string sd, c;
    hx509_verify_ctx vctx = ctx;
    hx509_certs signer = NULL;
    heim_oid type;
    int ret;

    if (FUNC0(cert) == NULL)
	return 0;

    ret = FUNC3(context, 0, NULL, NULL, 0,
				    NULL, cert, NULL, NULL, NULL, &sd);
    if (ret)
	FUNC1(1, "hx509_cms_create_signed_1");

    ret = FUNC4(context, vctx, 0, sd.data, sd.length,
				  NULL, NULL, &type, &c, &signer);
    FUNC2(sd.data);
    if (ret)
	FUNC5(context, 1, ret, "hx509_cms_verify_signed");

    FUNC6("create-signature verify-sigature done\n");

    FUNC2(c.data);

    return 0;
}