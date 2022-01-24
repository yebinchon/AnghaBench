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
typedef  scalar_t__ uint32_t ;
struct last_version_options {int /*<<< orphan*/  realm_string; int /*<<< orphan*/  config_file_string; } ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  kadm5_server_context ;

/* Variables and functions */
 int /*<<< orphan*/  context ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,unsigned long) ; 

int
FUNC7(struct last_version_options *opt, int argc, char **argv)
{
    kadm5_server_context *server_context;
    krb5_error_code ret;
    uint32_t version;

    server_context = FUNC0(opt->config_file_string,
					opt->realm_string);

    ret = FUNC3 (server_context);
    if (ret)
	FUNC4 (context, 1, ret, "kadm5_log_init");

    ret = FUNC2 (server_context, &version);
    if (ret)
	FUNC4 (context, 1, ret, "kadm5_log_get_version");

    ret = FUNC1 (server_context);
    if (ret)
	FUNC5(context, ret, "kadm5_log_end");

    FUNC6("version: %lu\n", (unsigned long)version);

    return 0;
}