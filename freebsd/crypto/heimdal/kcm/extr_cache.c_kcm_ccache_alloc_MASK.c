#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
struct TYPE_7__ {int /*<<< orphan*/ * keytab; } ;
struct TYPE_8__ {int flags; int refcnt; int mode; int uid; int gid; int /*<<< orphan*/  mutex; scalar_t__ renew_life; scalar_t__ tkt_life; TYPE_1__ key; int /*<<< orphan*/ * creds; int /*<<< orphan*/ * server; int /*<<< orphan*/ * client; int /*<<< orphan*/ * name; int /*<<< orphan*/  uuid; struct TYPE_8__* next; } ;
typedef  TYPE_2__ kcm_ccache_data ;
typedef  TYPE_2__* kcm_ccache ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int KCM_FLAGS_VALID ; 
 scalar_t__ KRB5_CC_NOMEM ; 
 scalar_t__ KRB5_CC_WRITE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int S_IRUSR ; 
 int S_IWUSR ; 
 TYPE_2__* ccache_head ; 
 int /*<<< orphan*/  ccache_mutex ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC8 (char const*) ; 

__attribute__((used)) static krb5_error_code
FUNC9(krb5_context context,
		 const char *name,
		 kcm_ccache *ccache)
{
    kcm_ccache slot = NULL, p;
    krb5_error_code ret;
    int new_slot = 0;

    *ccache = NULL;

    /* First, check for duplicates */
    FUNC2(&ccache_mutex);
    ret = 0;
    for (p = ccache_head; p != NULL; p = p->next) {
	if (p->flags & KCM_FLAGS_VALID) {
	    if (FUNC7(p->name, name) == 0) {
		ret = KRB5_CC_WRITE;
		break;
	    }
	} else if (slot == NULL)
	    slot = p;
    }

    if (ret)
	goto out;

    /*
     * Create an enpty slot for us.
     */
    if (slot == NULL) {
	slot = (kcm_ccache_data *)FUNC6(sizeof(*slot));
	if (slot == NULL) {
	    ret = KRB5_CC_NOMEM;
	    goto out;
	}
	slot->next = ccache_head;
	FUNC1(&slot->mutex);
	new_slot = 1;
    }

    FUNC4(slot->uuid, sizeof(slot->uuid));

    slot->name = FUNC8(name);
    if (slot->name == NULL) {
	ret = KRB5_CC_NOMEM;
	goto out;
    }

    slot->refcnt = 1;
    slot->flags = KCM_FLAGS_VALID;
    slot->mode = S_IRUSR | S_IWUSR;
    slot->uid = -1;
    slot->gid = -1;
    slot->client = NULL;
    slot->server = NULL;
    slot->creds = NULL;
    slot->key.keytab = NULL;
    slot->tkt_life = 0;
    slot->renew_life = 0;

    if (new_slot)
	ccache_head = slot;

    *ccache = slot;

    FUNC3(&ccache_mutex);
    return 0;

out:
    FUNC3(&ccache_mutex);
    if (new_slot && slot != NULL) {
	FUNC0(&slot->mutex);
	FUNC5(slot);
    }
    return ret;
}