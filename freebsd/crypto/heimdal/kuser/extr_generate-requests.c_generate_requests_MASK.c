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
typedef  int /*<<< orphan*/  krb5_principal ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_creds ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  cred ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,scalar_t__,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC8 () ; 
 unsigned int FUNC9 (char const*,char***) ; 

__attribute__((used)) static void
FUNC10 (const char *filename, unsigned nreq)
{
    krb5_principal client;
    krb5_context context;
    krb5_error_code ret;
    krb5_creds cred;
    int i;
    char **words;
    unsigned nwords;

    ret = FUNC5 (&context);
    if (ret)
	FUNC0 (1, "krb5_init_context failed: %d", ret);

    nwords = FUNC9 (filename, &words);

    for (i = 0; i < nreq; ++i) {
	char *name = words[FUNC8() % nwords];

	FUNC7(&cred, 0, sizeof(cred));

	ret = FUNC6 (context, name, &client);
	if (ret)
	    FUNC1 (context, 1, ret, "krb5_parse_name %s", name);

	ret = FUNC4 (context, &cred, client, "",
					    NULL, NULL, 0, NULL, NULL);
	if (ret)
	    FUNC2 (context, &cred);
	FUNC3(context, client);
    }
}