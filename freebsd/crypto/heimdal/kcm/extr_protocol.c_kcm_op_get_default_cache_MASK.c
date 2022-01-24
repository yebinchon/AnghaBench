#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct kcm_default_cache {char* name; int /*<<< orphan*/  session; int /*<<< orphan*/  uid; struct kcm_default_cache* next; } ;
typedef  int /*<<< orphan*/  krb5_storage ;
typedef  int /*<<< orphan*/  krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  kcm_operation ;
struct TYPE_6__ {scalar_t__ uid; } ;
typedef  TYPE_1__ kcm_client ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char**,char*,int) ; 
 struct kcm_default_cache* default_caches ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static krb5_error_code
FUNC6(krb5_context context,
			 kcm_client *client,
			 kcm_operation opcode,
			 krb5_storage *request,
			 krb5_storage *response)
{
    struct kcm_default_cache *c;
    krb5_error_code ret;
    const char *name = NULL;
    char *n = NULL;

    FUNC0(context, client, opcode);

    for (c = default_caches; c != NULL; c = c->next) {
	if (FUNC4(client, c->uid, c->session)) {
	    name = c->name;
	    break;
	}
    }
    if (name == NULL)
	name = n = FUNC3(client);

    if (name == NULL) {
	FUNC1(&n, "%d", (int)client->uid);
	name = n;
    }
    if (name == NULL)
	return ENOMEM;
    ret = FUNC5(response, name);
    if (n)
	FUNC2(n);
    return ret;
}