#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  krb5_principal ;
typedef  scalar_t__ krb5_kvno ;
struct TYPE_6__ {int /*<<< orphan*/  keyblock; scalar_t__ vno; int /*<<< orphan*/  timestamp; int /*<<< orphan*/  principal; } ;
typedef  TYPE_1__ krb5_keytab_entry ;
typedef  int /*<<< orphan*/  krb5_keytab ;
typedef  int /*<<< orphan*/  krb5_keyblock ;
typedef  scalar_t__ krb5_error_code ;
struct TYPE_7__ {char* realm; char* admin_server; int /*<<< orphan*/  mask; int /*<<< orphan*/  kadmind_port; } ;
typedef  TYPE_2__ kadm5_config_params ;
typedef  int /*<<< orphan*/  conf ;

/* Variables and functions */
 scalar_t__ ENOMEM ; 
 int /*<<< orphan*/  KADM5_ADMIN_SERVICE ; 
 int /*<<< orphan*/  KADM5_CONFIG_ADMIN_SERVER ; 
 int /*<<< orphan*/  KADM5_CONFIG_KADMIND_PORT ; 
 int /*<<< orphan*/  KADM5_CONFIG_REALM ; 
 int /*<<< orphan*/  context ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**) ; 
 scalar_t__ FUNC4 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/  keytab_string ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 char* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__,char*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 void* FUNC12 (char const*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static krb5_error_code
FUNC14 (krb5_keytab keytab,
	      krb5_principal principal, krb5_kvno kvno,
	      const char *realm, const char *admin_server, int server_port)
{
    krb5_error_code ret;
    kadm5_config_params conf;
    void *kadm_handle;
    char *client_name;
    krb5_keyblock *keys;
    int num_keys;
    int i;

    ret = FUNC9 (context, principal, &client_name);
    if (ret) {
	FUNC10 (context, ret, "krb5_unparse_name");
	return ret;
    }

    FUNC11 (&conf, 0, sizeof(conf));

    if(realm == NULL)
	realm = FUNC7(context, principal);
    conf.realm = FUNC12(realm);
    if (conf.realm == NULL) {
	FUNC0 (client_name);
	FUNC8(context, ENOMEM, "malloc failed");
	return ENOMEM;
    }
    conf.mask |= KADM5_CONFIG_REALM;

    if (admin_server) {
	conf.admin_server = FUNC12(admin_server);
	if (conf.admin_server == NULL) {
	    FUNC0(client_name);
	    FUNC0(conf.realm);
	    FUNC8(context, ENOMEM, "malloc failed");
	    return ENOMEM;
	}
	conf.mask |= KADM5_CONFIG_ADMIN_SERVER;
    }

    if (server_port) {
	conf.kadmind_port = FUNC1(server_port);
	conf.mask |= KADM5_CONFIG_KADMIND_PORT;
    }

    ret = FUNC3 (context,
				    client_name,
				    keytab_string,
				    KADM5_ADMIN_SERVICE,
				    &conf, 0, 0,
				    &kadm_handle);
    FUNC0(conf.admin_server);
    FUNC0(conf.realm);
    if (ret) {
	FUNC10 (context, ret,
		   "kadm5_c_init_with_skey_ctx: %s:", client_name);
	FUNC0 (client_name);
	return ret;
    }
    ret = FUNC4 (kadm_handle, principal, &keys, &num_keys);
    FUNC2 (kadm_handle);
    if (ret) {
	FUNC10(context, ret, "kadm5_randkey_principal: %s:", client_name);
	FUNC0 (client_name);
	return ret;
    }
    FUNC0 (client_name);
    for (i = 0; i < num_keys; ++i) {
	krb5_keytab_entry new_entry;

	new_entry.principal = principal;
	new_entry.timestamp = FUNC13 (NULL);
	new_entry.vno = kvno + 1;
	new_entry.keyblock  = keys[i];

	ret = FUNC6 (context, keytab, &new_entry);
	if (ret)
	    FUNC10 (context, ret, "krb5_kt_add_entry");
	FUNC5 (context, &keys[i]);
    }
    return ret;
}