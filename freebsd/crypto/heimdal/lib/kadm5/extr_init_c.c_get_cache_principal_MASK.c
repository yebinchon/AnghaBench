#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  void* krb5_principal ;
struct TYPE_12__ {scalar_t__ i; } ;
typedef  TYPE_3__ krb5_kdc_flags ;
typedef  scalar_t__ krb5_error_code ;
struct TYPE_10__ {scalar_t__ initial; } ;
struct TYPE_11__ {TYPE_1__ b; } ;
struct TYPE_13__ {TYPE_2__ flags; void* server; void* client; } ;
typedef  TYPE_4__ krb5_creds ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/ * krb5_ccache ;
typedef  int /*<<< orphan*/  in ;

/* Variables and functions */
 int /*<<< orphan*/  KRB5_GC_CACHED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__,int /*<<< orphan*/ *,TYPE_4__*,TYPE_4__**) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,void**,int /*<<< orphan*/ *,char const*,char*,int /*<<< orphan*/ *) ; 
 char* FUNC7 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (char const*,char*) ; 

__attribute__((used)) static krb5_error_code
FUNC10(krb5_context context,
		    krb5_ccache *id,
		    krb5_principal *client)
{
    krb5_error_code ret;
    const char *name, *inst;
    krb5_principal p1, p2;

    ret = FUNC1(context, id);
    if(ret) {
	*id = NULL;
	return ret;
    }

    ret = FUNC2(context, *id, &p1);
    if(ret) {
	FUNC0(context, *id);
	*id = NULL;
	return ret;
    }

    ret = FUNC6(context, &p2, NULL,
			      "kadmin", "admin", NULL);
    if (ret) {
	FUNC0(context, *id);
	*id = NULL;
	FUNC4(context, p1);
	return ret;
    }

    {
	krb5_creds in, *out;
	krb5_kdc_flags flags;

	flags.i = 0;
	FUNC8(&in, 0, sizeof(in));

	in.client = p1;
	in.server = p2;

	/* check for initial ticket kadmin/admin */
	ret = FUNC5(context, KRB5_GC_CACHED, flags,
					      *id, &in, &out);
	FUNC4(context, p2);
	if (ret == 0) {
	    if (out->flags.b.initial) {
		*client = p1;
		FUNC3(context, out);
		return 0;
	    }
	    FUNC3(context, out);
	}
    }
    FUNC0(context, *id);
    *id = NULL;

    name = FUNC7(context, p1, 0);
    inst = FUNC7(context, p1, 1);
    if(inst == NULL || FUNC9(inst, "admin") != 0) {
	ret = FUNC6(context, &p2, NULL, name, "admin", NULL);
	FUNC4(context, p1);
	if(ret != 0)
	    return ret;

	*client = p2;
	return 0;
    }

    *client = p1;

    return 0;
}