#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uid_t ;
struct krb5_kafs_data {int /*<<< orphan*/  context; int /*<<< orphan*/  id; } ;
struct kafs_token {int dummy; } ;
struct kafs_data {struct krb5_kafs_data* data; } ;
typedef  int krb5_error_code ;
struct TYPE_8__ {int /*<<< orphan*/  keytype; } ;
struct TYPE_9__ {int /*<<< orphan*/  client; int /*<<< orphan*/  server; TYPE_1__ session; } ;
typedef  TYPE_2__ krb5_creds ;
typedef  int /*<<< orphan*/  in_creds ;

/* Variables and functions */
 int /*<<< orphan*/  ETYPE_DES_CBC_CRC ; 
 int /*<<< orphan*/  ETYPE_DES_CBC_MD5 ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,TYPE_2__**) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*,char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,char const*,struct kafs_token*) ; 

__attribute__((used)) static int
FUNC10(struct kafs_data *data, const char *name, const char *inst,
	 const char *realm, uid_t uid, struct kafs_token *kt)
{
    krb5_error_code ret;
    krb5_creds in_creds, *out_creds;
    struct krb5_kafs_data *d = data->data;
    int invalid;

    FUNC8(&in_creds, 0, sizeof(in_creds));

    ret = FUNC7(d->context, &in_creds.server,
			      realm, name, inst, NULL);
    if(ret)
	return ret;
    ret = FUNC0(d->context, d->id, &in_creds.client);
    if(ret){
	FUNC5(d->context, in_creds.server);
	return ret;
    }

    in_creds.session.keytype = ETYPE_DES_CBC_CRC;

    /* check if des is disable, and in that case enable it for afs */
    invalid = FUNC3(d->context, in_creds.session.keytype);
    if (invalid)
	FUNC2(d->context, in_creds.session.keytype);

    ret = FUNC6(d->context, 0, d->id, &in_creds, &out_creds);
    if (ret) {
	in_creds.session.keytype = ETYPE_DES_CBC_MD5;
	ret = FUNC6(d->context, 0, d->id, &in_creds, &out_creds);
    }

    if (invalid)
	FUNC1(d->context, in_creds.session.keytype);

    FUNC5(d->context, in_creds.server);
    FUNC5(d->context, in_creds.client);
    if(ret)
	return ret;

    ret = FUNC9(d->context, d->id, out_creds, uid,
		     (inst != NULL && inst[0] != '\0') ? inst : realm, kt);
    FUNC4(d->context, out_creds);

    return ret;
}