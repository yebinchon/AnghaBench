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
typedef  scalar_t__ krb5_error_code ;
struct TYPE_4__ {char* admin_server; int /*<<< orphan*/ * realm; int /*<<< orphan*/  mask; int /*<<< orphan*/  kadmind_port; } ;
typedef  TYPE_1__ kadm5_config_params ;
typedef  int /*<<< orphan*/  conf ;

/* Variables and functions */
 int /*<<< orphan*/  KADM5_ADMIN_SERVICE ; 
 int /*<<< orphan*/  KADM5_CONFIG_ADMIN_SERVER ; 
 int /*<<< orphan*/  KADM5_CONFIG_KADMIND_PORT ; 
 int /*<<< orphan*/  KADM5_CONFIG_REALM ; 
 int /*<<< orphan*/  context ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC6 (char const*) ; 

__attribute__((used)) static void*
FUNC7(char *principal,
		       const char *realm,
		       char *admin_server,
		       int server_port)
{
    static kadm5_config_params conf;
    krb5_error_code ret;
    void *kadm_handle;
    FUNC5(&conf, 0, sizeof(conf));

    if(realm) {
	conf.realm = FUNC6(realm);
	if (conf.realm == NULL) {
	    FUNC3(context, 0, "malloc: out of memory");
	    return NULL;
	}
	conf.mask |= KADM5_CONFIG_REALM;
    }

    if (admin_server) {
	conf.admin_server = admin_server;
	conf.mask |= KADM5_CONFIG_ADMIN_SERVER;
    }

    if (server_port) {
	conf.kadmind_port = FUNC1(server_port);
	conf.mask |= KADM5_CONFIG_KADMIND_PORT;
    }

    /* should get realm from each principal, instead of doing
       everything with the same (local) realm */

    ret = FUNC2(context,
				       principal,
				       NULL,
				       KADM5_ADMIN_SERVICE,
				       &conf, 0, 0,
				       &kadm_handle);
    FUNC0(conf.realm);
    if(ret) {
	FUNC4(context, ret, "kadm5_init_with_password");
	return NULL;
    }
    return kadm_handle;
}