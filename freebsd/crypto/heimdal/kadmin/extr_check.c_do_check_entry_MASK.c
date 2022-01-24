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
typedef  int /*<<< orphan*/  princ ;
typedef  int /*<<< orphan*/  krb5_principal ;
typedef  scalar_t__ krb5_error_code ;
struct TYPE_7__ {int n_key_data; TYPE_1__* key_data; } ;
typedef  TYPE_2__ kadm5_principal_ent_rec ;
struct TYPE_6__ {scalar_t__* key_data_length; int /*<<< orphan*/ * key_data_type; } ;

/* Variables and functions */
 int KADM5_KEY_DATA ; 
 int KADM5_PRINCIPAL ; 
 int /*<<< orphan*/  context ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 int /*<<< orphan*/  kadm_handle ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC8(krb5_principal principal, void *data)
{
    krb5_error_code ret;
    kadm5_principal_ent_rec princ;
    char *name;
    int i;

    ret = FUNC4(context, principal, &name);
    if (ret)
	return 1;

    FUNC7 (&princ, 0, sizeof(princ));
    ret = FUNC2(kadm_handle, principal, &princ,
			      KADM5_PRINCIPAL | KADM5_KEY_DATA);
    if(ret) {
	FUNC5(context, ret, "Failed to get principal: %s", name);
	FUNC0(name);
	return 0;
    }

    for (i = 0; i < princ.n_key_data; i++) {
	size_t keysize;
	ret = FUNC3(context,
				   princ.key_data[i].key_data_type[0],
				   &keysize);
	if (ret == 0 && keysize != (size_t)princ.key_data[i].key_data_length[0]) {
	    FUNC6(context,
		       "Principal %s enctype %d, wrong length: %lu\n",
		       name, princ.key_data[i].key_data_type[0],
		       (unsigned long)princ.key_data[i].key_data_length);
	}
    }

    FUNC0(name);
    FUNC1(kadm_handle, &princ);

    return 0;
}