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
typedef  int /*<<< orphan*/  krb5_keytab ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  client_principal ; 
 int /*<<< orphan*/ * client_principal_str ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ keytab_file ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int FUNC9 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  server_principal ; 
 int /*<<< orphan*/ * server_principal_str ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  ticket_flags ; 
 scalar_t__ ticket_flags_str ; 

__attribute__((used)) static void
FUNC11 (krb5_context context, krb5_keytab *kt)
{
    krb5_error_code ret;

    if (keytab_file)
	ret = FUNC6 (context, keytab_file, kt);
    else
	ret = FUNC5 (context, kt);
    if (ret)
	FUNC3 (context, 1, ret, "resolving keytab");

    if (client_principal_str == NULL)
	FUNC4 (context, 1, "missing client principal");
    ret = FUNC7 (context, client_principal_str, &client_principal);
    if (ret)
	FUNC3 (context, 1, ret, "resolvning client name");

    if (server_principal_str == NULL)
	FUNC4 (context, 1, "missing server principal");
    ret = FUNC7 (context, server_principal_str, &server_principal);
    if (ret)
	FUNC3 (context, 1, ret, "resolvning client name");

    if (ticket_flags_str) {
	int ticket_flags_int;

	ticket_flags_int = FUNC9(ticket_flags_str,
				       FUNC0(), 0);
	if (ticket_flags_int <= 0) {
	    FUNC8 (context, "bad ticket flags: `%s'", ticket_flags_str);
	    FUNC10 (FUNC0(), stderr);
	    FUNC1 (1);
	}
	if (ticket_flags_int)
	    ticket_flags = FUNC2 (ticket_flags_int);
    }
}