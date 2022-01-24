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
struct kcm_default_cache {void* name; struct kcm_default_cache* next; int /*<<< orphan*/  uid; int /*<<< orphan*/  session; } ;
typedef  int /*<<< orphan*/  krb5_storage ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  kcm_operation ;
struct TYPE_5__ {int /*<<< orphan*/  uid; int /*<<< orphan*/  session; } ;
typedef  TYPE_1__ kcm_client ;

/* Variables and functions */
 scalar_t__ ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 struct kcm_default_cache* default_caches ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char**) ; 
 struct kcm_default_cache* FUNC4 (int) ; 
 void* FUNC5 (char*) ; 

__attribute__((used)) static krb5_error_code
FUNC6(krb5_context context,
			 kcm_client *client,
			 kcm_operation opcode,
			 krb5_storage *request,
			 krb5_storage *response)
{
    struct kcm_default_cache *c;
    krb5_error_code ret;
    char *name;

    ret = FUNC3(request, &name);
    if (ret)
	return ret;

    FUNC0(context, client, opcode, name);

    for (c = default_caches; c != NULL; c = c->next) {
	if (FUNC2(client, c->uid, c->session))
	    break;
    }
    if (c == NULL) {
	c = FUNC4(sizeof(*c));
	if (c == NULL)
	    return ENOMEM;
	c->session = client->session;
	c->uid = client->uid;
	c->name = FUNC5(name);

	c->next = default_caches;
	default_caches = c;
    } else {
	FUNC1(c->name);
	c->name = FUNC5(name);
    }

    return 0;
}