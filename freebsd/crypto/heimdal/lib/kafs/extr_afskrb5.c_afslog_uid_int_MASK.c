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
struct krb5_kafs_data {int /*<<< orphan*/  context; int /*<<< orphan*/  realm; int /*<<< orphan*/  id; } ;
struct kafs_token {int /*<<< orphan*/ * ticket; int /*<<< orphan*/  ticket_len; int /*<<< orphan*/  ct; } ;
struct kafs_data {struct krb5_kafs_data* data; } ;
typedef  int /*<<< orphan*/  krb5_principal ;
typedef  scalar_t__ krb5_error_code ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct kafs_data*,int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC1 (struct kafs_data*,char const*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,struct kafs_token*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static krb5_error_code
FUNC7(struct kafs_data *data, const char *cell, const char *rh,
	       uid_t uid, const char *homedir)
{
    krb5_error_code ret;
    struct kafs_token kt;
    krb5_principal princ;
    const char *trealm; /* ticket realm */
    struct krb5_kafs_data *d = data->data;

    if (cell == 0 || cell[0] == 0)
	return FUNC0 (data, uid, homedir);

    ret = FUNC4 (d->context, d->id, &princ);
    if (ret)
	return ret;

    trealm = FUNC6 (d->context, princ);

    kt.ticket = NULL;
    ret = FUNC1(data, cell, d->realm, trealm, uid, &kt);
    FUNC5 (d->context, princ);

    if(ret == 0) {
	ret = FUNC3(cell, &kt.ct, kt.ticket, kt.ticket_len);
	FUNC2(kt.ticket);
    }
    return ret;
}