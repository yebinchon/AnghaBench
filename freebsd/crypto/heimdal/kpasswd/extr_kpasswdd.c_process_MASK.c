#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  u_char ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  other_addr ;
struct TYPE_9__ {int /*<<< orphan*/  client; } ;
typedef  TYPE_1__ krb5_ticket ;
typedef  int /*<<< orphan*/  krb5_realm ;
typedef  int /*<<< orphan*/  krb5_keytab ;
typedef  scalar_t__ krb5_error_code ;
struct TYPE_10__ {int length; int /*<<< orphan*/ * data; } ;
typedef  TYPE_2__ krb5_data ;
typedef  int /*<<< orphan*/ * krb5_auth_context ;
typedef  int /*<<< orphan*/  krb5_address ;

/* Variables and functions */
 int /*<<< orphan*/  KRB5_AUTH_CONTEXT_DO_SEQUENCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct sockaddr*,int,TYPE_2__*) ; 
 int /*<<< orphan*/  context ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,struct sockaddr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__**,TYPE_2__*,int /*<<< orphan*/ *,int,struct sockaddr*,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC13 (krb5_realm *realms,
	 krb5_keytab keytab,
	 int s,
	 krb5_address *this_addr,
	 struct sockaddr *sa,
	 int sa_size,
	 u_char *msg,
	 int len)
{
    krb5_error_code ret;
    krb5_auth_context auth_context = NULL;
    krb5_data out_data;
    krb5_ticket *ticket;
    krb5_address other_addr;
    uint16_t version;

    FUNC11(&other_addr, 0, sizeof(other_addr));
    FUNC6 (&out_data);

    ret = FUNC2 (context, &auth_context);
    if (ret) {
	FUNC10 (context, ret, "krb5_auth_con_init");
	return;
    }

    FUNC4 (context, auth_context,
			    KRB5_AUTH_CONTEXT_DO_SEQUENCE);

    ret = FUNC9 (context, sa, &other_addr);
    if (ret) {
	FUNC10 (context, ret, "krb5_sockaddr2address");
	goto out;
    }

    ret = FUNC3 (context, auth_context, this_addr, NULL);
    if (ret) {
	FUNC10 (context, ret, "krb5_auth_con_setaddr(this)");
	goto out;
    }

    if (FUNC12 (&auth_context, realms, keytab, &ticket, &out_data,
		&version, s, sa, sa_size, msg, len, &other_addr) == 0)
    {
	/*
	 * We always set the client_addr, to assume that the client
	 * can ignore it if it choose to do so (just the server does
	 * so for addressless tickets).
	 */
	ret = FUNC3 (context, auth_context, 
				      this_addr, &other_addr);
	if (ret) {
	    FUNC10 (context, ret, "krb5_auth_con_setaddr(other)");
	    goto out;
	}

	FUNC0 (auth_context,
		ticket->client,
		version,
		s,
		sa, sa_size,
		&out_data);
	FUNC11 (out_data.data, 0, out_data.length);
	FUNC8 (context, ticket);
    }

out:
    FUNC7(context, &other_addr);
    FUNC5(&out_data);
    FUNC1(context, auth_context);
}