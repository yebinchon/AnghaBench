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
typedef  int /*<<< orphan*/  krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  kcm_operation ;
struct TYPE_4__ {int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; int /*<<< orphan*/  pid; } ;
typedef  TYPE_1__ kcm_client ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KRB5_CC_NOMEM ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static krb5_error_code
FUNC4(krb5_context context,
	       kcm_client *client,
	       kcm_operation opcode,
	       krb5_storage *request,
	       krb5_storage *response)
{
    krb5_error_code ret;
    char *name;

    FUNC0(context, client, opcode);

    name = FUNC2(client->pid, client->uid, client->gid);
    if (name == NULL) {
	return KRB5_CC_NOMEM;
    }

    ret = FUNC3(response, name);
    FUNC1(name);

    return ret;
}