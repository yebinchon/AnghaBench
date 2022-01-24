#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_14__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  log_ent ;
typedef  int /*<<< orphan*/  krb5_storage ;
typedef  scalar_t__ krb5_error_code ;
struct TYPE_18__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ krb5_data ;
struct TYPE_19__ {int /*<<< orphan*/  context; TYPE_5__* db; } ;
typedef  TYPE_3__ kadm5_server_context ;
typedef  scalar_t__ kadm5_ret_t ;
typedef  int int32_t ;
struct TYPE_17__ {size_t len; int /*<<< orphan*/ * val; } ;
struct TYPE_16__ {int /*<<< orphan*/ * extensions; TYPE_1__ keys; int /*<<< orphan*/ * max_renew; int /*<<< orphan*/  kvno; int /*<<< orphan*/ * modified_by; int /*<<< orphan*/ * max_life; int /*<<< orphan*/  flags; int /*<<< orphan*/ * pw_end; int /*<<< orphan*/ * valid_end; int /*<<< orphan*/  principal; } ;
struct TYPE_20__ {TYPE_14__ entry; } ;
typedef  TYPE_4__ hdb_entry_ex ;
typedef  int /*<<< orphan*/  ent ;
struct TYPE_21__ {scalar_t__ (* hdb_store ) (int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ ,TYPE_4__*) ;scalar_t__ (* hdb_fetch_kvno ) (int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,TYPE_4__*) ;} ;
typedef  int /*<<< orphan*/  HDB_extensions ;

/* Variables and functions */
 scalar_t__ ENOMEM ; 
 int HDB_F_ADMIN_DATA ; 
 int HDB_F_DECRYPT ; 
 int HDB_F_GET_ANY ; 
 int /*<<< orphan*/  HDB_F_REPLACE ; 
 int KADM5_ATTRIBUTES ; 
 int KADM5_AUX_ATTRIBUTES ; 
 int KADM5_FAIL_AUTH_COUNT ; 
 int KADM5_KEY_DATA ; 
 int KADM5_KVNO ; 
 int KADM5_LAST_FAILED ; 
 int KADM5_LAST_PWD_CHANGE ; 
 int KADM5_LAST_SUCCESS ; 
 int KADM5_MAX_LIFE ; 
 int KADM5_MAX_RLIFE ; 
 int KADM5_MKVNO ; 
 int KADM5_MOD_NAME ; 
 int KADM5_MOD_TIME ; 
 int KADM5_POLICY ; 
 int KADM5_POLICY_CLR ; 
 int KADM5_PRINC_EXPIRE_TIME ; 
 int KADM5_PW_EXPIRATION ; 
 int KADM5_TL_DATA ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,TYPE_2__*,TYPE_14__*) ; 
 scalar_t__ FUNC11 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 void* FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,TYPE_4__*) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ ,TYPE_4__*) ; 

__attribute__((used)) static kadm5_ret_t
FUNC20 (kadm5_server_context *context,
			 uint32_t ver,
			 uint32_t len,
			 krb5_storage *sp)
{
    krb5_error_code ret;
    int32_t mask;
    krb5_data value;
    hdb_entry_ex ent, log_ent;

    FUNC17(&log_ent, 0, sizeof(log_ent));

    FUNC13 (sp, &mask);
    len -= 4;
    ret = FUNC11 (&value, len);
    if (ret) {
	FUNC14(context->context, ret, "out of memory");
	return ret;
    }
    FUNC15 (sp, value.data, len);
    ret = FUNC10 (context->context, &value, &log_ent.entry);
    FUNC12(&value);
    if (ret)
	return ret;

    FUNC17(&ent, 0, sizeof(ent));
    ret = context->db->hdb_fetch_kvno(context->context, context->db,
				      log_ent.entry.principal,
				      HDB_F_DECRYPT|HDB_F_GET_ANY|HDB_F_ADMIN_DATA, 0, &ent);
    if (ret)
	goto out;
    if (mask & KADM5_PRINC_EXPIRE_TIME) {
	if (log_ent.entry.valid_end == NULL) {
	    ent.entry.valid_end = NULL;
	} else {
	    if (ent.entry.valid_end == NULL) {
		ent.entry.valid_end = FUNC16(sizeof(*ent.entry.valid_end));
		if (ent.entry.valid_end == NULL) {
		    ret = ENOMEM;
		    FUNC14(context->context, ret, "out of memory");
		    goto out;
		}
	    }
	    *ent.entry.valid_end = *log_ent.entry.valid_end;
	}
    }
    if (mask & KADM5_PW_EXPIRATION) {
	if (log_ent.entry.pw_end == NULL) {
	    ent.entry.pw_end = NULL;
	} else {
	    if (ent.entry.pw_end == NULL) {
		ent.entry.pw_end = FUNC16(sizeof(*ent.entry.pw_end));
		if (ent.entry.pw_end == NULL) {
		    ret = ENOMEM;
		    FUNC14(context->context, ret, "out of memory");
		    goto out;
		}
	    }
	    *ent.entry.pw_end = *log_ent.entry.pw_end;
	}
    }
    if (mask & KADM5_LAST_PWD_CHANGE) {
	FUNC0 ();		/* XXX */
    }
    if (mask & KADM5_ATTRIBUTES) {
	ent.entry.flags = log_ent.entry.flags;
    }
    if (mask & KADM5_MAX_LIFE) {
	if (log_ent.entry.max_life == NULL) {
	    ent.entry.max_life = NULL;
	} else {
	    if (ent.entry.max_life == NULL) {
		ent.entry.max_life = FUNC16 (sizeof(*ent.entry.max_life));
		if (ent.entry.max_life == NULL) {
		    ret = ENOMEM;
		    FUNC14(context->context, ret, "out of memory");
		    goto out;
		}
	    }
	    *ent.entry.max_life = *log_ent.entry.max_life;
	}
    }
    if ((mask & KADM5_MOD_TIME) && (mask & KADM5_MOD_NAME)) {
	if (ent.entry.modified_by == NULL) {
	    ent.entry.modified_by = FUNC16(sizeof(*ent.entry.modified_by));
	    if (ent.entry.modified_by == NULL) {
		ret = ENOMEM;
		FUNC14(context->context, ret, "out of memory");
		goto out;
	    }
	} else
	    FUNC6(ent.entry.modified_by);
	ret = FUNC2(log_ent.entry.modified_by, ent.entry.modified_by);
	if (ret) {
	    FUNC14(context->context, ret, "out of memory");
	    goto out;
	}
    }
    if (mask & KADM5_KVNO) {
	ent.entry.kvno = log_ent.entry.kvno;
    }
    if (mask & KADM5_MKVNO) {
	FUNC0 ();		/* XXX */
    }
    if (mask & KADM5_AUX_ATTRIBUTES) {
	FUNC0 ();		/* XXX */
    }
    if (mask & KADM5_POLICY) {
	FUNC0 ();		/* XXX */
    }
    if (mask & KADM5_POLICY_CLR) {
	FUNC0 ();		/* XXX */
    }
    if (mask & KADM5_MAX_RLIFE) {
	if (log_ent.entry.max_renew == NULL) {
	    ent.entry.max_renew = NULL;
	} else {
	    if (ent.entry.max_renew == NULL) {
		ent.entry.max_renew = FUNC16 (sizeof(*ent.entry.max_renew));
		if (ent.entry.max_renew == NULL) {
		    ret = ENOMEM;
		    FUNC14(context->context, ret, "out of memory");
		    goto out;
		}
	    }
	    *ent.entry.max_renew = *log_ent.entry.max_renew;
	}
    }
    if (mask & KADM5_LAST_SUCCESS) {
	FUNC0 ();		/* XXX */
    }
    if (mask & KADM5_LAST_FAILED) {
	FUNC0 ();		/* XXX */
    }
    if (mask & KADM5_FAIL_AUTH_COUNT) {
	FUNC0 ();		/* XXX */
    }
    if (mask & KADM5_KEY_DATA) {
	size_t num;
	size_t i;

	for (i = 0; i < ent.entry.keys.len; ++i)
	    FUNC8(&ent.entry.keys.val[i]);
	FUNC5 (ent.entry.keys.val);

	num = log_ent.entry.keys.len;

	ent.entry.keys.len = num;
	ent.entry.keys.val = FUNC16(len * sizeof(*ent.entry.keys.val));
	if (ent.entry.keys.val == NULL) {
	    FUNC14(context->context, ENOMEM, "out of memory");
	    return ENOMEM;
	}
	for (i = 0; i < ent.entry.keys.len; ++i) {
	    ret = FUNC4(&log_ent.entry.keys.val[i],
			   &ent.entry.keys.val[i]);
	    if (ret) {
		FUNC14(context->context, ret, "out of memory");
		goto out;
	    }
	}
    }
    if ((mask & KADM5_TL_DATA) && log_ent.entry.extensions) {
	HDB_extensions *es = ent.entry.extensions;

	ent.entry.extensions = FUNC1(1, sizeof(*ent.entry.extensions));
	if (ent.entry.extensions == NULL)
	    goto out;

	ret = FUNC3(log_ent.entry.extensions,
				  ent.entry.extensions);
	if (ret) {
	    FUNC14(context->context, ret, "out of memory");
	    FUNC5(ent.entry.extensions);
	    ent.entry.extensions = es;
	    goto out;
	}
	if (es) {
	    FUNC7(es);
	    FUNC5(es);
	}
    }
    ret = context->db->hdb_store(context->context, context->db,
				 HDB_F_REPLACE, &ent);
 out:
    FUNC9 (context->context, &ent);
    FUNC9 (context->context, &log_ent);
    return ret;
}