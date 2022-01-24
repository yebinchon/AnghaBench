#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct kcm_ntlm_cred {int /*<<< orphan*/  domain; int /*<<< orphan*/  user; int /*<<< orphan*/  session; int /*<<< orphan*/  uid; struct kcm_ntlm_cred* next; } ;
typedef  int /*<<< orphan*/  krb5_storage ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  kcm_operation ;
typedef  int /*<<< orphan*/  kcm_client ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 struct kcm_ntlm_cred* ntlm_head ; 

__attribute__((used)) static krb5_error_code
FUNC3(krb5_context context,
			  kcm_client *client,
			  kcm_operation opcode,
			  krb5_storage *request,
			  krb5_storage *response)
{
    struct kcm_ntlm_cred *c;
    krb5_error_code ret;

    for (c = ntlm_head; c != NULL; c = c->next) {
	if (!FUNC0(client, c->uid, c->session))
	    continue;

	ret = FUNC2(response, 1);
	if (ret)
	    return ret;
	ret = FUNC1(response, c->user);
	if (ret)
	    return ret;
	ret = FUNC1(response, c->domain);
	if (ret)
	    return ret;
    }
    return FUNC2(response, 0);
}