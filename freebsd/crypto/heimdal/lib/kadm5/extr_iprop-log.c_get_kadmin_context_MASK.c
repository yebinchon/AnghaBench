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
typedef  int /*<<< orphan*/  kadm5_server_context ;
struct TYPE_4__ {char* realm; int /*<<< orphan*/  mask; } ;
typedef  TYPE_1__ kadm5_config_params ;
typedef  int /*<<< orphan*/  conf ;

/* Variables and functions */
 int /*<<< orphan*/  KADM5_ADMIN_SERVICE ; 
 int /*<<< orphan*/  KADM5_CONFIG_REALM ; 
 int /*<<< orphan*/  FUNC0 (char**,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  context ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC5 (char**) ; 
 scalar_t__ FUNC6 (char const*,char***) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static kadm5_server_context *
FUNC9(const char *config_file, char *realm)
{
    kadm5_config_params conf;
    krb5_error_code ret;
    void *kadm_handle;
    char **files;

    if (config_file == NULL) {
	char *file;
	FUNC0(&file, "%d/kdc.conf", FUNC2(context));
	if (file == NULL)
	    FUNC1(1, "out of memory");
	config_file = file;
    }

    ret = FUNC6(config_file, &files);
    if (ret)
	FUNC4(context, 1, ret, "getting configuration files");

    ret = FUNC7(context, files);
    FUNC5(files);
    if (ret)
	FUNC4(context, 1, ret, "reading configuration files");

    FUNC8(&conf, 0, sizeof(conf));
    if(realm) {
	conf.mask |= KADM5_CONFIG_REALM;
	conf.realm = realm;
    }

    ret = FUNC3 (context,
					KADM5_ADMIN_SERVICE,
					NULL,
					KADM5_ADMIN_SERVICE,
					&conf, 0, 0,
					&kadm_handle);
    if (ret)
	FUNC4 (context, 1, ret, "kadm5_init_with_password_ctx");

    return (kadm5_server_context *)kadm_handle;
}