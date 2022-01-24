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
struct kcm_creds {int /*<<< orphan*/  uuid; struct kcm_creds* next; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  krb5_storage ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  kcm_operation ;
typedef  int /*<<< orphan*/  kcm_client ;
typedef  TYPE_1__* kcm_ccache ;
struct TYPE_4__ {struct kcm_creds* creds; } ;

/* Variables and functions */
 scalar_t__ ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char**) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static krb5_error_code
FUNC6(krb5_context context,
			  kcm_client *client,
			  kcm_operation opcode,
			  krb5_storage *request,
			  krb5_storage *response)
{
    struct kcm_creds *creds;
    krb5_error_code ret;
    kcm_ccache ccache;
    char *name;

    ret = FUNC4(request, &name);
    if (ret)
	return ret;

    FUNC0(context, client, opcode, name);

    ret = FUNC2(context, client, opcode,
				    name, &ccache);
    FUNC1(name);
    if (ret)
	return ret;

    for (creds = ccache->creds ; creds ; creds = creds->next) {
	ssize_t sret;
	sret = FUNC5(response, &creds->uuid, sizeof(creds->uuid));
	if (sret != sizeof(creds->uuid)) {
	    ret = ENOMEM;
	    break;
	}
    }

    FUNC3(context, ccache);

    return ret;
}