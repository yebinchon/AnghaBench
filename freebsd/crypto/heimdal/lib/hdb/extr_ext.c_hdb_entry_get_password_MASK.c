#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_7__ ;
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_13__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  krb5_context ;
typedef  char* heim_utf8_string ;
struct TYPE_20__ {char* data; int length; } ;
typedef  TYPE_4__ heim_octet_string ;
typedef  int /*<<< orphan*/ * hdb_master_key ;
struct TYPE_21__ {int /*<<< orphan*/  principal; } ;
typedef  TYPE_5__ hdb_entry ;
struct TYPE_23__ {int /*<<< orphan*/  hdb_master_key; scalar_t__ hdb_master_key_set; } ;
struct TYPE_16__ {int /*<<< orphan*/  length; int /*<<< orphan*/  data; } ;
struct TYPE_17__ {char** mkvno; TYPE_13__ password; } ;
struct TYPE_18__ {TYPE_1__ password; } ;
struct TYPE_19__ {TYPE_2__ u; } ;
struct TYPE_22__ {TYPE_3__ data; } ;
typedef  TYPE_6__ HDB_extension ;
typedef  TYPE_7__ HDB ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int HDB_ERR_NO_MKEY ; 
 int /*<<< orphan*/  HDB_KU_MKEY ; 
 int /*<<< orphan*/ * FUNC0 (char**,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  choice_HDB_extension_data_password ; 
 int FUNC2 (TYPE_13__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 TYPE_6__* FUNC5 (TYPE_5__ const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,char*,...) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 char* FUNC9 (char*) ; 

int
FUNC10(krb5_context context, HDB *db,
		       const hdb_entry *entry, char **p)
{
    HDB_extension *ext;
    char *str;
    int ret;

    ext = FUNC5(entry, choice_HDB_extension_data_password);
    if (ext) {
	heim_utf8_string xstr;
	heim_octet_string pw;

	if (db->hdb_master_key_set && ext->data.u.password.mkvno) {
	    hdb_master_key key;

	    key = FUNC0(ext->data.u.password.mkvno,
				       db->hdb_master_key);

	    if (key == NULL) {
		FUNC7(context, HDB_ERR_NO_MKEY,
				       "master key %d missing",
				       *ext->data.u.password.mkvno);
		return HDB_ERR_NO_MKEY;
	    }

	    ret = FUNC1(context, key, HDB_KU_MKEY,
				    ext->data.u.password.password.data,
				    ext->data.u.password.password.length,
				    &pw);
	} else {
	    ret = FUNC2(&ext->data.u.password.password, &pw);
	}
	if (ret) {
	    FUNC6(context);
	    return ret;
	}

	xstr = pw.data;
	if (xstr[pw.length - 1] != '\0') {
	    FUNC7(context, EINVAL, "malformed password");
	    return EINVAL;
	}

	*p = FUNC9(xstr);

	FUNC3(&pw);
	if (*p == NULL) {
	    FUNC7(context, ENOMEM, "malloc: out of memory");
	    return ENOMEM;
	}
	return 0;
    }

    ret = FUNC8(context, entry->principal, &str);
    if (ret == 0) {
	FUNC7(context, ENOENT,
			       "no password attribute for %s", str);
	FUNC4(str);
    } else
	FUNC6(context);

    return ENOENT;
}