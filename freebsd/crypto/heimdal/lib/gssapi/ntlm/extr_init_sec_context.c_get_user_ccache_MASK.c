#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct ntlm_buf {int /*<<< orphan*/ * data; int /*<<< orphan*/  length; } ;
typedef  TYPE_1__* ntlm_name ;
typedef  int /*<<< orphan*/  krb5_principal ;
typedef  int krb5_error_code ;
struct TYPE_8__ {int /*<<< orphan*/  length; int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ krb5_data ;
typedef  int /*<<< orphan*/ * krb5_context ;
typedef  int /*<<< orphan*/ * krb5_ccache ;
struct TYPE_7__ {int /*<<< orphan*/  domain; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  KRB5_PRINCIPAL_UNPARSE_NO_REALM ; 
 int /*<<< orphan*/  FUNC0 (char**,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,TYPE_2__*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ **) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC14(const ntlm_name name, char **username, struct ntlm_buf *key)
{
    krb5_context context = NULL;
    krb5_principal client;
    krb5_ccache id = NULL;
    krb5_error_code ret;
    char *confname;
    krb5_data data;

    *username = NULL;
    FUNC7(&data);
    key->length = 0;
    key->data = NULL;

    ret = FUNC10(&context);
    if (ret)
	return ret;

    ret = FUNC2(context, &id);
    if (ret)
	goto out;

    ret = FUNC4(context, id, &client);
    if (ret)
	goto out;

    ret = FUNC11(context, client,
				  KRB5_PRINCIPAL_UNPARSE_NO_REALM,
				  username);
    FUNC9(context, client);
    if (ret)
	goto out;

    FUNC0(&confname, "ntlm-key-%d", name->domain);
    if (confname == NULL) {
	FUNC5(context);
	ret = ENOMEM;
	goto out;
    }

    ret = FUNC3(context, id, NULL,
			     confname, &data);
    if (ret)
	goto out;

    key->data = FUNC12(data.length);
    if (key->data == NULL) {
	ret = ENOMEM;
	goto out;
    }
    key->length = data.length;
    FUNC13(key->data, data.data, data.length);

 out:
    FUNC6(&data);
    if (id)
	FUNC1(context, id);

    FUNC8(context);

    return ret;
}