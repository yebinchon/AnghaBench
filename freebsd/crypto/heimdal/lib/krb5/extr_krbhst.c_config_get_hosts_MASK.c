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
struct krb5_krbhst_data {int /*<<< orphan*/  port; int /*<<< orphan*/  def_port; int /*<<< orphan*/  flags; int /*<<< orphan*/  realm; } ;
typedef  int /*<<< orphan*/  krb5_context ;

/* Variables and functions */
 int /*<<< orphan*/  KD_CONFIG_EXISTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct krb5_krbhst_data*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char**) ; 
 char** FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(krb5_context context, struct krb5_krbhst_data *kd,
		 const char *conf_string)
{
    int i;
    char **hostlist;
    hostlist = FUNC3(context, NULL,
				       "realms", kd->realm, conf_string, NULL);

    FUNC0(context, 2, "configuration file for realm %s%s found",
		kd->realm, hostlist ? "" : " not");

    if(hostlist == NULL)
	return;
    kd->flags |= KD_CONFIG_EXISTS;
    for(i = 0; hostlist && hostlist[i] != NULL; i++)
	FUNC1(context, kd, hostlist[i], kd->def_port, kd->port);

    FUNC2(hostlist);
}