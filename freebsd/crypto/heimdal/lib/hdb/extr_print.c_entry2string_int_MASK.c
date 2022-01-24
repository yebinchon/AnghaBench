#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  krb5_storage ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
struct TYPE_12__ {size_t len; TYPE_3__* val; } ;
struct TYPE_15__ {TYPE_6__* extensions; TYPE_5__* generation; int /*<<< orphan*/  flags; int /*<<< orphan*/ * max_renew; int /*<<< orphan*/ * max_life; int /*<<< orphan*/ * pw_end; int /*<<< orphan*/ * valid_end; int /*<<< orphan*/ * valid_start; int /*<<< orphan*/ * modified_by; int /*<<< orphan*/  created_by; TYPE_4__ keys; int /*<<< orphan*/  kvno; int /*<<< orphan*/  principal; } ;
typedef  TYPE_7__ hdb_entry ;
struct TYPE_14__ {size_t len; int /*<<< orphan*/ * val; } ;
struct TYPE_13__ {int /*<<< orphan*/  gen; int /*<<< orphan*/  usec; int /*<<< orphan*/  time; } ;
struct TYPE_9__ {int /*<<< orphan*/  keyvalue; int /*<<< orphan*/  keytype; } ;
struct TYPE_11__ {TYPE_2__* salt; TYPE_1__ key; int /*<<< orphan*/ * mkvno; } ;
struct TYPE_10__ {int /*<<< orphan*/  salt; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*,size_t,int /*<<< orphan*/ *,size_t*,scalar_t__) ; 
 scalar_t__ ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HDB_extension ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (void*,size_t,char**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__,char*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static krb5_error_code
FUNC12 (krb5_context context, krb5_storage *sp, hdb_entry *ent)
{
    char *p;
    size_t i;
    krb5_error_code ret;

    /* --- principal */
    ret = FUNC10(context, ent->principal, &p);
    if(ret)
	return ret;
    FUNC4(context, sp, "%s ", p);
    FUNC5(p);
    /* --- kvno */
    FUNC4(context, sp, "%d", ent->kvno);
    /* --- keys */
    for(i = 0; i < ent->keys.len; i++){
	/* --- mkvno, keytype */
	if(ent->keys.val[i].mkvno)
	    FUNC4(context, sp, ":%d:%d:",
			  *ent->keys.val[i].mkvno,
			  ent->keys.val[i].key.keytype);
	else
	    FUNC4(context, sp, "::%d:",
			  ent->keys.val[i].key.keytype);
	/* --- keydata */
	FUNC3(context, sp, &ent->keys.val[i].key.keyvalue);
	FUNC4(context, sp, ":");
	/* --- salt */
	if(ent->keys.val[i].salt){
	    FUNC4(context, sp, "%u/", ent->keys.val[i].salt->type);
	    FUNC3(context, sp, &ent->keys.val[i].salt->salt);
	}else
	    FUNC4(context, sp, "-");
    }
    FUNC4(context, sp, " ");
    /* --- created by */
    FUNC2(context, sp, &ent->created_by);
    /* --- modified by */
    FUNC2(context, sp, ent->modified_by);

    /* --- valid start */
    if(ent->valid_start)
	FUNC4(context, sp, "%s ", FUNC11(*ent->valid_start));
    else
	FUNC4(context, sp, "- ");

    /* --- valid end */
    if(ent->valid_end)
	FUNC4(context, sp, "%s ", FUNC11(*ent->valid_end));
    else
	FUNC4(context, sp, "- ");

    /* --- password ends */
    if(ent->pw_end)
	FUNC4(context, sp, "%s ", FUNC11(*ent->pw_end));
    else
	FUNC4(context, sp, "- ");

    /* --- max life */
    if(ent->max_life)
	FUNC4(context, sp, "%d ", *ent->max_life);
    else
	FUNC4(context, sp, "- ");

    /* --- max renewable life */
    if(ent->max_renew)
	FUNC4(context, sp, "%d ", *ent->max_renew);
    else
	FUNC4(context, sp, "- ");

    /* --- flags */
    FUNC4(context, sp, "%d ", FUNC1(ent->flags));

    /* --- generation number */
    if(ent->generation) {
	FUNC4(context, sp, "%s:%d:%d ", FUNC11(ent->generation->time),
		      ent->generation->usec,
		      ent->generation->gen);
    } else
	FUNC4(context, sp, "- ");

    /* --- extensions */
    if(ent->extensions && ent->extensions->len > 0) {
	for(i = 0; i < ent->extensions->len; i++) {
	    void *d;
	    size_t size, sz = 0;

	    FUNC0(HDB_extension, d, size,
			       &ent->extensions->val[i], &sz, ret);
	    if (ret) {
		FUNC8(context);
		return ret;
	    }
	    if(size != sz)
		FUNC7(context, "internal asn.1 encoder error");

	    if (FUNC6(d, size, &p) < 0) {
		FUNC5(d);
		FUNC9(context, ENOMEM, "malloc: out of memory");
		return ENOMEM;
	    }

	    FUNC5(d);
	    FUNC4(context, sp, "%s%s", p,
			  ent->extensions->len - 1 != i ? ":" : "");
	    FUNC5(p);
	}
    } else
	FUNC4(context, sp, "-");


    return 0;
}