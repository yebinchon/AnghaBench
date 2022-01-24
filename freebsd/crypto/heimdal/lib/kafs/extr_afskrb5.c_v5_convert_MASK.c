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
typedef  int /*<<< orphan*/  krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_creds ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  krb5_ccache ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,char*,char*,char**) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 char* FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct kafs_token*,int) ; 

__attribute__((used)) static krb5_error_code
FUNC6(krb5_context context, krb5_ccache id,
	   krb5_creds *cred, uid_t uid,
	   const char *cell,
	   struct kafs_token *kt)
{
    krb5_error_code ret;
    char *c, *val;

    c = FUNC4(cell);
    if (c == NULL)
	return ENOMEM;
    FUNC0(c, c);
    FUNC2 (context, "libkafs",
			    c,
			    "afs-use-524", "2b", &val);
    FUNC1(c);

    if (FUNC3(val, "local") == 0 ||
	FUNC3(val, "2b") == 0)
	ret = FUNC5(cred, uid, kt, 1);
    else
	ret = FUNC5(cred, uid, kt, 0);

    FUNC1(val);
    return ret;
}