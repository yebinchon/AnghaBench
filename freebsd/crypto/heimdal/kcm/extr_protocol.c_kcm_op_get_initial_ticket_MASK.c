#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  krb5_storage ;
typedef  int /*<<< orphan*/ * krb5_principal ;
typedef  int /*<<< orphan*/  krb5_keyblock ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  kcm_operation ;
typedef  int /*<<< orphan*/  kcm_client ;
typedef  TYPE_2__* kcm_ccache ;
typedef  scalar_t__ int8_t ;
struct TYPE_6__ {int /*<<< orphan*/  keyblock; } ;
struct TYPE_7__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  flags; TYPE_1__ key; int /*<<< orphan*/ * server; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KCM_FLAGS_USE_CACHED_KEY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,char**) ; 

__attribute__((used)) static krb5_error_code
FUNC14(krb5_context context,
			  kcm_client *client,
			  kcm_operation opcode,
			  krb5_storage *request,
			  krb5_storage *response)
{
    krb5_error_code ret;
    kcm_ccache ccache;
    char *name;
    int8_t not_tgt = 0;
    krb5_principal server = NULL;
    krb5_keyblock key;

    FUNC9(&key);

    ret = FUNC13(request, &name);
    if (ret)
	return ret;

    FUNC2(context, client, opcode, name);

    ret = FUNC10(request, &not_tgt);
    if (ret) {
	FUNC3(name);
	return ret;
    }

    if (not_tgt) {
	ret = FUNC12(request, &server);
	if (ret) {
	    FUNC3(name);
	    return ret;
	}
    }

    ret = FUNC11(request, &key);
    if (ret) {
	FUNC3(name);
	if (server != NULL)
	    FUNC8(context, server);
	return ret;
    }

    ret = FUNC5(context, client, opcode,
				    name, &ccache);
    if (ret == 0) {
	FUNC0(&ccache->mutex);

	if (ccache->server != NULL) {
	    FUNC8(context, ccache->server);
	    ccache->server = NULL;
	}

	FUNC7(context, &ccache->key.keyblock);

	ccache->server = server;
	ccache->key.keyblock = key;
    	ccache->flags |= KCM_FLAGS_USE_CACHED_KEY;

	ret = FUNC4(context, ccache, NULL);
	if (ret) {
	    ccache->server = NULL;
	    FUNC9(&ccache->key.keyblock);
	    ccache->flags &= ~(KCM_FLAGS_USE_CACHED_KEY);
	}

	FUNC1(&ccache->mutex);
    }

    FUNC3(name);

    if (ret != 0) {
	FUNC8(context, server);
	FUNC7(context, &key);
    }

    FUNC6(context, ccache);

    return ret;
}