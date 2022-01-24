#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  krb5_storage ;
typedef  scalar_t__ krb5_error_code ;
struct TYPE_19__ {TYPE_7__* server; } ;
typedef  TYPE_3__ krb5_creds ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  krb5_ccache_data ;
typedef  int /*<<< orphan*/  kcm_operation ;
typedef  int /*<<< orphan*/  kcm_client ;
typedef  TYPE_4__* kcm_ccache ;
struct TYPE_17__ {int len; int /*<<< orphan*/ * val; } ;
struct TYPE_18__ {TYPE_1__ name_string; } ;
struct TYPE_21__ {TYPE_2__ name; } ;
struct TYPE_20__ {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ KRB5_FCC_PERM ; 
 int KRB5_GC_CACHED ; 
 int /*<<< orphan*/  KRB5_TGS_NAME ; 
 scalar_t__ disallow_getting_krbtgt ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,TYPE_4__**) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,TYPE_4__*,int,TYPE_3__*,TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_3__*,TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_7__*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,char**) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static krb5_error_code
FUNC16(krb5_context context,
		kcm_client *client,
		kcm_operation opcode,
		krb5_storage *request,
		krb5_storage *response)
{
    uint32_t flags;
    krb5_creds mcreds;
    krb5_error_code ret;
    kcm_ccache ccache;
    char *name;
    krb5_creds *credp;
    int free_creds = 0;

    ret = FUNC12(request, &name);
    if (ret)
	return ret;

    FUNC2(context, client, opcode, name);

    ret = FUNC13(request, &flags);
    if (ret) {
	FUNC3(name);
	return ret;
    }

    ret = FUNC11(request, &mcreds);
    if (ret) {
	FUNC3(name);
	return ret;
    }

    if (disallow_getting_krbtgt &&
	mcreds.server->name.name_string.len == 2 &&
	FUNC15(mcreds.server->name.name_string.val[0], KRB5_TGS_NAME) == 0)
    {
	FUNC3(name);
	FUNC8(context, &mcreds);
	return KRB5_FCC_PERM;
    }

    ret = FUNC4(context, client, opcode,
				    name, &ccache);
    if (ret) {
	FUNC3(name);
	FUNC8(context, &mcreds);
	return ret;
    }

    ret = FUNC5(context, ccache, flags,
				   &mcreds, &credp);
    if (ret && ((flags & KRB5_GC_CACHED) == 0) &&
	!FUNC10(context, mcreds.server)) {
	krb5_ccache_data ccdata;

	/* try and acquire */
	FUNC0(&ccache->mutex);

	/* Fake up an internal ccache */
	FUNC6(context, ccache, &ccdata);

	/* glue cc layer will store creds */
	ret = FUNC9(context, 0, &ccdata, &mcreds, &credp);
	if (ret == 0)
	    free_creds = 1;

	FUNC1(&ccache->mutex);
    }

    if (ret == 0) {
	ret = FUNC14(response, credp);
    }

    FUNC3(name);
    FUNC8(context, &mcreds);
    FUNC7(context, ccache);

    if (free_creds)
	FUNC8(context, credp);

    return ret;
}