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
struct kafs_token {int /*<<< orphan*/  ticket; int /*<<< orphan*/  ticket_len; int /*<<< orphan*/  ct; } ;
typedef  int /*<<< orphan*/  krb5_creds ;
typedef  int /*<<< orphan*/  krb5_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,struct kafs_token*) ; 

int
FUNC3(krb5_context context, const char *cell, uid_t uid,
	       krb5_creds *cred)
{
    struct kafs_token kt;
    int ret;

    ret = FUNC2(context, NULL, cred, uid, cell, &kt);
    if (ret)
	return ret;

    ret = FUNC1(cell, &kt.ct, kt.ticket, kt.ticket_len);

    FUNC0(kt.ticket);

    return ret;
}