#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  time_t ;
typedef  int /*<<< orphan*/  t ;
typedef  int off_t ;
typedef  int /*<<< orphan*/  krb5_storage ;
typedef  int /*<<< orphan*/  krb5_principal ;
typedef  int /*<<< orphan*/  krb5_error_code ;
struct TYPE_9__ {int /*<<< orphan*/  length; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ krb5_data ;
typedef  int /*<<< orphan*/  krb5_context ;
struct TYPE_10__ {int /*<<< orphan*/  context; } ;
typedef  TYPE_2__ kadm5_server_context ;
typedef  int int32_t ;
struct TYPE_11__ {int kvno; int /*<<< orphan*/ * max_renew; int /*<<< orphan*/ * max_life; int /*<<< orphan*/  flags; int /*<<< orphan*/ * pw_end; int /*<<< orphan*/ * valid_end; int /*<<< orphan*/  principal; } ;
typedef  TYPE_3__ hdb_entry ;
typedef  enum kadm_ops { ____Placeholder_kadm_ops } kadm_ops ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
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
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__*,TYPE_3__*) ; 
#define  kadm_create 132 
#define  kadm_delete 131 
 scalar_t__ kadm_get ; 
#define  kadm_modify 130 
#define  kadm_nop 129 
#define  kadm_rename 128 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 char** op_names ; 
 int /*<<< orphan*/  FUNC15 (char*,...) ; 
 int /*<<< orphan*/  FUNC16 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC20(kadm5_server_context *server_context,
	    uint32_t ver,
	    time_t timestamp,
	    enum kadm_ops op,
	    uint32_t len,
	    krb5_storage *sp,
	    void *ctx)
{
    char t[256];
    int32_t mask;
    hdb_entry ent;
    krb5_principal source;
    char *name1, *name2;
    krb5_data data;
    krb5_context scontext = server_context->context;

    off_t end = FUNC12(sp, 0, SEEK_CUR) + len;

    krb5_error_code ret;

    FUNC16(t, sizeof(t), "%Y-%m-%d %H:%M:%S", FUNC14(&timestamp));

    if((int)op < (int)kadm_get || (int)op > (int)kadm_nop) {
	FUNC15("unknown op: %d\n", op);
	FUNC12(sp, end, SEEK_SET);
	return;
    }

    FUNC15 ("%s: ver = %u, timestamp = %s, len = %u\n",
	    op_names[op], ver, t, len);
    switch(op) {
    case kadm_delete:
	FUNC10(sp, &source);
	FUNC13(scontext, source, &name1);
	FUNC15("    %s\n", name1);
	FUNC3(name1);
	FUNC8(scontext, source);
	break;
    case kadm_rename:
	ret = FUNC6(&data, len);
	if (ret)
	    FUNC7 (scontext, 1, ret, "kadm_rename: data alloc: %d", len);
	FUNC10(sp, &source);
	FUNC11(sp, data.data, data.length);
	FUNC5(scontext, &data, &ent);
	FUNC13(scontext, source, &name1);
	FUNC13(scontext, ent.principal, &name2);
	FUNC15("    %s -> %s\n", name1, name2);
	FUNC3(name1);
	FUNC3(name2);
	FUNC8(scontext, source);
	FUNC4(&ent);
	break;
    case kadm_create:
	ret = FUNC6(&data, len);
	if (ret)
	    FUNC7 (scontext, 1, ret, "kadm_create: data alloc: %d", len);
	FUNC11(sp, data.data, data.length);
	ret = FUNC5(scontext, &data, &ent);
	if(ret)
	    FUNC1();
	mask = ~0;
	goto foo;
    case kadm_modify:
	ret = FUNC6(&data, len);
	if (ret)
	    FUNC7 (scontext, 1, ret, "kadm_modify: data alloc: %d", len);
	FUNC9(sp, &mask);
	FUNC11(sp, data.data, data.length);
	ret = FUNC5(scontext, &data, &ent);
	if(ret)
	    FUNC1();
    foo:
	if(ent.principal /* mask & KADM5_PRINCIPAL */) {
	    FUNC13(scontext, ent.principal, &name1);
	    FUNC15("    principal = %s\n", name1);
	    FUNC3(name1);
	}
	if(mask & KADM5_PRINC_EXPIRE_TIME) {
	    if(ent.valid_end == NULL) {
		FUNC17(t, "never", sizeof(t));
	    } else {
		FUNC16(t, sizeof(t), "%Y-%m-%d %H:%M:%S",
			 FUNC14(ent.valid_end));
	    }
	    FUNC15("    expires = %s\n", t);
	}
	if(mask & KADM5_PW_EXPIRATION) {
	    if(ent.pw_end == NULL) {
		FUNC17(t, "never", sizeof(t));
	    } else {
		FUNC16(t, sizeof(t), "%Y-%m-%d %H:%M:%S",
			 FUNC14(ent.pw_end));
	    }
	    FUNC15("    password exp = %s\n", t);
	}
	if(mask & KADM5_LAST_PWD_CHANGE) {
	}
	if(mask & KADM5_ATTRIBUTES) {
	    FUNC18(FUNC0(ent.flags),
			  FUNC2(), t, sizeof(t));
	    FUNC15("    attributes = %s\n", t);
	}
	if(mask & KADM5_MAX_LIFE) {
	    if(ent.max_life == NULL)
		FUNC17(t, "for ever", sizeof(t));
	    else
		FUNC19(*ent.max_life, t, sizeof(t));
	    FUNC15("    max life = %s\n", t);
	}
	if(mask & KADM5_MAX_RLIFE) {
	    if(ent.max_renew == NULL)
		FUNC17(t, "for ever", sizeof(t));
	    else
		FUNC19(*ent.max_renew, t, sizeof(t));
	    FUNC15("    max rlife = %s\n", t);
	}
	if(mask & KADM5_MOD_TIME) {
	    FUNC15("    mod time\n");
	}
	if(mask & KADM5_MOD_NAME) {
	    FUNC15("    mod name\n");
	}
	if(mask & KADM5_KVNO) {
	    FUNC15("    kvno = %d\n", ent.kvno);
	}
	if(mask & KADM5_MKVNO) {
	    FUNC15("    mkvno\n");
	}
	if(mask & KADM5_AUX_ATTRIBUTES) {
	    FUNC15("    aux attributes\n");
	}
	if(mask & KADM5_POLICY) {
	    FUNC15("    policy\n");
	}
	if(mask & KADM5_POLICY_CLR) {
	    FUNC15("    mod time\n");
	}
	if(mask & KADM5_LAST_SUCCESS) {
	    FUNC15("    last success\n");
	}
	if(mask & KADM5_LAST_FAILED) {
	    FUNC15("    last failed\n");
	}
	if(mask & KADM5_FAIL_AUTH_COUNT) {
	    FUNC15("    fail auth count\n");
	}
	if(mask & KADM5_KEY_DATA) {
	    FUNC15("    key data\n");
	}
	if(mask & KADM5_TL_DATA) {
	    FUNC15("    tl data\n");
	}
	FUNC4(&ent);
	break;
    case kadm_nop :
	break;
    default:
	FUNC1();
    }
    FUNC12(sp, end, SEEK_SET);
}