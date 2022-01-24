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
typedef  int /*<<< orphan*/  uid_t ;
struct kafs_token {int dummy; } ;
struct kafs_data {int (* get_cred ) (struct kafs_data*,char const*,char const*,char const*,int /*<<< orphan*/ ,struct kafs_token*) ;char* (* get_error ) (struct kafs_data*,int) ;int /*<<< orphan*/  (* free_error ) (struct kafs_data*,char const*) ;int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char**,char*,int /*<<< orphan*/ ,char*,char const*,char const*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  kafs_verbose_ctx ; 
 int FUNC3 (struct kafs_data*,char const*,char const*,char const*,int /*<<< orphan*/ ,struct kafs_token*) ; 
 char* FUNC4 (struct kafs_data*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct kafs_data*,char const*) ; 

__attribute__((used)) static int
FUNC7(struct kafs_data *data, const char *user, const char *cell,
		   const char *realm, uid_t uid, struct kafs_token *kt)
{
    int ret;

    ret = (*data->get_cred)(data, user, cell, realm, uid, kt);
    if (&kafs_verbose) {
	const char *estr = (*data->get_error)(data, ret);
	char *str;
	FUNC0(&str, "%d tried afs%s%s@%s -> %s (%d)",
		 data->name, cell ? "/" : "",
		 cell ? cell : "", realm, estr ? estr : "unknown", ret);
	FUNC2)(kafs_verbose_ctx, str);
	if (estr)
	    (*data->free_error)(data, estr);
	FUNC1(str);
    }

    return ret;
}