#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uuid ;
struct kcm_creds {int /*<<< orphan*/  cred; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  krb5_storage ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  kcmuuid_t ;
typedef  int /*<<< orphan*/  kcm_operation ;
typedef  int /*<<< orphan*/  kcm_client ;
typedef  TYPE_1__* kcm_ccache ;
struct TYPE_5__ {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ KRB5_CC_END ; 
 scalar_t__ KRB5_CC_IO ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 struct kcm_creds* FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char**) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static krb5_error_code
FUNC11(krb5_context context,
			kcm_client *client,
			kcm_operation opcode,
			krb5_storage *request,
			krb5_storage *response)
{
    krb5_error_code ret;
    kcm_ccache ccache;
    char *name;
    struct kcm_creds *c;
    kcmuuid_t uuid;
    ssize_t sret;

    ret = FUNC8(request, &name);
    if (ret)
	return ret;

    FUNC2(context, client, opcode, name);

    ret = FUNC5(context, client, opcode,
				    name, &ccache);
    FUNC3(name);
    if (ret)
	return ret;

    sret = FUNC9(request, &uuid, sizeof(uuid));
    if (sret != sizeof(uuid)) {
	FUNC6(context, ccache);
	FUNC7(context);
	return KRB5_CC_IO;
    }

    c = FUNC4(context, ccache, uuid);
    if (c == NULL) {
	FUNC6(context, ccache);
	return KRB5_CC_END;
    }

    FUNC0(&ccache->mutex);
    ret = FUNC10(response, &c->cred);
    FUNC1(&ccache->mutex);

    FUNC6(context, ccache);

    return ret;
}