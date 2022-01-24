#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_9__ {int tl_data_type; struct TYPE_9__* tl_data_next; int /*<<< orphan*/  tl_data_contents; int /*<<< orphan*/  tl_data_length; } ;
typedef  TYPE_2__ krb5_tl_data ;
typedef  int /*<<< orphan*/  krb5_storage ;
struct TYPE_10__ {int /*<<< orphan*/  data; int /*<<< orphan*/  length; } ;
typedef  TYPE_3__ krb5_data ;
typedef  int /*<<< orphan*/  krb5_context ;
struct TYPE_11__ {int princ_expire_time; int pw_expiration; int last_pwd_change; int max_life; int mod_date; int attributes; int kvno; int mkvno; int aux_attributes; int max_renewable_life; int last_success; int last_failed; int fail_auth_count; int n_key_data; int n_tl_data; TYPE_1__* key_data; TYPE_2__* tl_data; int /*<<< orphan*/  policy; int /*<<< orphan*/  mod_name; int /*<<< orphan*/  principal; } ;
typedef  TYPE_4__ kadm5_principal_ent_rec ;
struct TYPE_8__ {int* key_data_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 void* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(krb5_context contextp,
		  krb5_storage *sp,
		  kadm5_principal_ent_rec *ent)
{
    uint32_t flag, num;
    size_t i;

    FUNC4(ent, 0, sizeof(*ent));

    FUNC0(FUNC6(contextp, sp, &ent->principal));
    FUNC0(FUNC3(sp, &flag));
    ent->princ_expire_time = flag;
    FUNC0(FUNC3(sp, &flag));
    ent->pw_expiration = flag;
    FUNC0(FUNC3(sp, &flag));
    ent->last_pwd_change = flag;
    FUNC0(FUNC3(sp, &flag));
    ent->max_life = flag;
    FUNC0(FUNC3(sp, &flag));
    if (flag == 0)
	FUNC6(contextp, sp, &ent->mod_name);
    FUNC0(FUNC3(sp, &flag));
    ent->mod_date = flag;
    FUNC0(FUNC3(sp, &flag));
    ent->attributes = flag;
    FUNC0(FUNC3(sp, &flag));
    ent->kvno = flag;
    FUNC0(FUNC3(sp, &flag));
    ent->mkvno = flag;
    FUNC0(FUNC7(sp, &ent->policy));
    FUNC0(FUNC3(sp, &flag));
    ent->aux_attributes = flag;
    FUNC0(FUNC3(sp, &flag));
    ent->max_renewable_life = flag;
    FUNC0(FUNC3(sp, &flag));
    ent->last_success = flag;
    FUNC0(FUNC3(sp, &flag));
    ent->last_failed = flag;
    FUNC0(FUNC3(sp, &flag));
    ent->fail_auth_count = flag;
    FUNC0(FUNC3(sp, &flag));
    ent->n_key_data = flag;
    FUNC0(FUNC3(sp, &flag));
    ent->n_tl_data = flag;
    FUNC0(FUNC3(sp, &flag));
    if (flag == 0) {
	krb5_tl_data **tp = &ent->tl_data;
	size_t count = 0;

	while(1) {
	    krb5_data c;
	    FUNC0(FUNC3(sp, &flag)); /* last item */
	    if (flag)
		break;
	    *tp = FUNC2(1, sizeof(**tp));
	    FUNC1(*tp != NULL);
	    FUNC0(FUNC3(sp, &flag));
	    (*tp)->tl_data_type = flag;
	    FUNC0(FUNC5(sp, &c));
	    (*tp)->tl_data_length = c.length;
	    (*tp)->tl_data_contents = c.data;
	    tp = &(*tp)->tl_data_next;

	    count++;
	}
	FUNC1((size_t)ent->n_tl_data == count);
    } else {
	FUNC1(ent->n_tl_data == 0);
    }

    FUNC0(FUNC3(sp, &num));
    FUNC1(num == (uint32_t)ent->n_key_data);

    ent->key_data = FUNC2(num, sizeof(ent->key_data[0]));
    FUNC1(ent->key_data != NULL);

    for (i = 0; i < num; i++) {
	FUNC0(FUNC3(sp, &flag)); /* data version */
	FUNC1(flag > 1);
	FUNC0(FUNC3(sp, &flag));
	ent->kvno = flag;
	FUNC0(FUNC3(sp, &flag));
	ent->key_data[i].key_data_type[0] = flag;
	FUNC0(FUNC3(sp, &flag));
	ent->key_data[i].key_data_type[1] = flag;
    }

    return 0;
}