#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  krb5_storage ;
typedef  int /*<<< orphan*/ * krb5_principal ;
struct TYPE_16__ {int /*<<< orphan*/  i; } ;
typedef  TYPE_3__ krb5_kdc_flags ;
typedef  scalar_t__ krb5_error_code ;
struct TYPE_15__ {scalar_t__ endtime; } ;
struct TYPE_14__ {int /*<<< orphan*/  keytype; } ;
struct TYPE_17__ {TYPE_2__ times; int /*<<< orphan*/ * server; int /*<<< orphan*/  client; TYPE_1__ session; } ;
typedef  TYPE_4__ krb5_creds ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  krb5_ccache_data ;
typedef  int /*<<< orphan*/  kcm_operation ;
typedef  int /*<<< orphan*/  kcm_client ;
typedef  TYPE_5__* kcm_ccache ;
typedef  int /*<<< orphan*/  in ;
struct TYPE_18__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  client; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,TYPE_5__**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__,int /*<<< orphan*/ *,TYPE_4__*,TYPE_4__**) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,char**) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static krb5_error_code
FUNC15(krb5_context context,
		  kcm_client *client,
		  kcm_operation opcode,
		  krb5_storage *request,
		  krb5_storage *response)
{
    krb5_error_code ret;
    kcm_ccache ccache;
    char *name;
    krb5_principal server = NULL;
    krb5_ccache_data ccdata;
    krb5_creds in, *out;
    krb5_kdc_flags flags;

    FUNC14(&in, 0, sizeof(in));

    ret = FUNC12(request, &name);
    if (ret)
	return ret;

    FUNC2(context, client, opcode, name);

    ret = FUNC13(request, &flags.i);
    if (ret) {
	FUNC3(name);
	return ret;
    }

    ret = FUNC10(request, &in.session.keytype);
    if (ret) {
	FUNC3(name);
	return ret;
    }

    ret = FUNC11(request, &server);
    if (ret) {
	FUNC3(name);
	return ret;
    }

    ret = FUNC4(context, client, opcode,
				    name, &ccache);
    if (ret) {
	FUNC8(context, server);
	FUNC3(name);
	return ret;
    }

    FUNC0(&ccache->mutex);

    /* Fake up an internal ccache */
    FUNC5(context, ccache, &ccdata);

    in.client = ccache->client;
    in.server = server;
    in.times.endtime = 0;

    /* glue cc layer will store creds */
    ret = FUNC9(context, 0, flags,
					  &ccdata, &in, &out);

    FUNC1(&ccache->mutex);

    FUNC8(context, server);

    if (ret == 0)
	FUNC7(context, out);

    FUNC6(context, ccache);
    FUNC3(name);

    return ret;
}