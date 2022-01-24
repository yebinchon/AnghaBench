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
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  krb5_storage ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  kcmuuid_t ;
typedef  int /*<<< orphan*/  kcm_operation ;
typedef  int /*<<< orphan*/  kcm_client ;
typedef  TYPE_1__* kcm_ccache ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ KRB5_CC_IO ; 
 scalar_t__ KRB5_FCC_NOFILE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static krb5_error_code
FUNC7(krb5_context context,
			 kcm_client *client,
			 kcm_operation opcode,
			 krb5_storage *request,
			 krb5_storage *response)
{
    krb5_error_code ret;
    kcmuuid_t uuid;
    ssize_t sret;
    kcm_ccache cache;

    FUNC0(context, client, opcode);

    sret = FUNC5(request, &uuid, sizeof(uuid));
    if (sret != sizeof(uuid)) {
	FUNC4(context);
	return KRB5_CC_IO;
    }

    ret = FUNC2(context, uuid, &cache);
    if (ret)
	return ret;

    ret = FUNC1(context, client, opcode, cache);
    if (ret)
	ret = KRB5_FCC_NOFILE;

    if (ret == 0)
	ret = FUNC6(response, cache->name);

    FUNC3(context, cache);

    return ret;
}