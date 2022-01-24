#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/ * hdb_master_key ;
typedef  int /*<<< orphan*/  hdb_entry ;
struct TYPE_13__ {int /*<<< orphan*/  hdb_master_key; scalar_t__ hdb_master_key_set; } ;
struct TYPE_9__ {int /*<<< orphan*/  password; int /*<<< orphan*/ * mkvno; } ;
struct TYPE_10__ {TYPE_1__ password; } ;
struct TYPE_11__ {TYPE_2__ u; int /*<<< orphan*/  element; } ;
struct TYPE_12__ {TYPE_3__ data; int /*<<< orphan*/  mandatory; } ;
typedef  TYPE_4__ HDB_extension ;
typedef  TYPE_5__ HDB ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FALSE ; 
 int HDB_ERR_NO_MKEY ; 
 int /*<<< orphan*/  HDB_KU_MKEY ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  choice_HDB_extension_data_password ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_4__*) ; 
 int FUNC5 (int /*<<< orphan*/ *,char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/ * FUNC7 (int) ; 
 scalar_t__ FUNC8 (char const*) ; 

int
FUNC9(krb5_context context, HDB *db,
		       hdb_entry *entry, const char *p)
{
    HDB_extension ext;
    hdb_master_key key;
    int ret;

    ext.mandatory = FALSE;
    ext.data.element = choice_HDB_extension_data_password;

    if (db->hdb_master_key_set) {

	key = FUNC0(NULL, db->hdb_master_key);
	if (key == NULL) {
	    FUNC6(context, HDB_ERR_NO_MKEY,
				   "hdb_entry_set_password: "
				   "failed to find masterkey");
	    return HDB_ERR_NO_MKEY;
	}

	ret = FUNC1(context, key, HDB_KU_MKEY,
				p, FUNC8(p) + 1,
				&ext.data.u.password.password);
	if (ret)
	    return ret;

	ext.data.u.password.mkvno =
	    FUNC7(sizeof(*ext.data.u.password.mkvno));
	if (ext.data.u.password.mkvno == NULL) {
	    FUNC3(&ext);
	    FUNC6(context, ENOMEM, "malloc: out of memory");
	    return ENOMEM;
	}
	*ext.data.u.password.mkvno = FUNC2(key);

    } else {
	ext.data.u.password.mkvno = NULL;

	ret = FUNC5(&ext.data.u.password.password,
			     p, FUNC8(p) + 1);
	if (ret) {
	    FUNC6(context, ret, "malloc: out of memory");
	    FUNC3(&ext);
	    return ret;
	}
    }

    ret = FUNC4(context, entry, &ext);

    FUNC3(&ext);

    return ret;
}