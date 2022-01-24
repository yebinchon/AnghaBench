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
typedef  int /*<<< orphan*/  krb5_storage ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  kcm_operation ;
typedef  int /*<<< orphan*/  kcm_client ;
typedef  TYPE_1__* kcm_ccache ;
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_4__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  kdc_offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,char**) ; 

__attribute__((used)) static krb5_error_code
FUNC8(krb5_context context,
		      kcm_client *client,
		      kcm_operation opcode,
		      krb5_storage *request,
		      krb5_storage *response)
{
    krb5_error_code ret;
    kcm_ccache ccache;
    int32_t offset;
    char *name;

    ret = FUNC7(request, &name);
    if (ret)
	return ret;

    FUNC2(context, client, opcode, name);

    ret = FUNC6(request, &offset);
    if (ret) {
	FUNC3(name);
	return ret;
    }

    ret = FUNC4(context, client, opcode, name, &ccache);
    FUNC3(name);
    if (ret)
	return ret;

    FUNC0(&ccache->mutex);
    ccache->kdc_offset = offset;
    FUNC1(&ccache->mutex);

    FUNC5(context, ccache);

    return ret;
}