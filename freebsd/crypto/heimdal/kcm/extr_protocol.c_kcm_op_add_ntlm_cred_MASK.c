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
struct kcm_ntlm_cred {int /*<<< orphan*/  uuid; int /*<<< orphan*/  session; int /*<<< orphan*/  uid; struct kcm_ntlm_cred* next; int /*<<< orphan*/  nthash; int /*<<< orphan*/  domain; int /*<<< orphan*/  user; } ;
typedef  int /*<<< orphan*/  krb5_storage ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_data ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  kcm_operation ;
struct TYPE_4__ {int /*<<< orphan*/  session; int /*<<< orphan*/  uid; } ;
typedef  TYPE_1__ kcm_client ;

/* Variables and functions */
 scalar_t__ ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 struct kcm_ntlm_cred* FUNC1 (int,int) ; 
 struct kcm_ntlm_cred* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct kcm_ntlm_cred*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 struct kcm_ntlm_cred* ntlm_head ; 

__attribute__((used)) static krb5_error_code
FUNC7(krb5_context context,
		     kcm_client *client,
		     kcm_operation opcode,
		     krb5_storage *request,
		     krb5_storage *response)
{
    struct kcm_ntlm_cred *cred, *c;
    krb5_error_code ret;

    cred = FUNC1(1, sizeof(*cred));
    if (cred == NULL)
	return ENOMEM;

    FUNC0(cred->uuid, sizeof(cred->uuid));

    ret = FUNC5(request, &cred->user);
    if (ret)
	goto error;

    ret = FUNC5(request, &cred->domain);
    if (ret)
	goto error;

    ret = FUNC4(request, &cred->nthash);
    if (ret)
	goto error;

    /* search for dups */
    c = FUNC2(cred->user, cred->domain, client);
    if (c) {
	krb5_data hash = c->nthash;
	c->nthash = cred->nthash;
	cred->nthash = hash;
	FUNC3(cred);
	cred = c;
    } else {
	cred->next = ntlm_head;
	ntlm_head = cred;
    }

    cred->uid = client->uid;
    cred->session = client->session;

    /* write response */
    (void)FUNC6(response, &cred->uuid, sizeof(cred->uuid));

    return 0;

 error:
    FUNC3(cred);

    return ret;
}