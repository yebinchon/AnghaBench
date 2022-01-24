#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct kcm_creds {struct kcm_creds* next; } ;
typedef  int /*<<< orphan*/  krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  TYPE_1__* kcm_ccache ;
struct TYPE_4__ {int flags; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; int /*<<< orphan*/  mode; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  name; int /*<<< orphan*/ * server; int /*<<< orphan*/ * client; struct kcm_creds* creds; struct TYPE_4__* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int KCM_FLAGS_VALID ; 
 TYPE_1__* ccache_head ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char**) ; 

krb5_error_code FUNC4(krb5_context context)
{
    kcm_ccache p;

    for (p = ccache_head; p != NULL; p = p->next) {
	char *cpn = NULL, *spn = NULL;
	int ncreds = 0;
	struct kcm_creds *k;

	if ((p->flags & KCM_FLAGS_VALID) == 0) {
	    FUNC2(7, "cache %08x: empty slot");
	    continue;
	}

	FUNC0(p);

	for (k = p->creds; k != NULL; k = k->next)
	    ncreds++;

	if (p->client != NULL)
	    FUNC3(context, p->client, &cpn);
	if (p->server != NULL)
	    FUNC3(context, p->server, &spn);

	FUNC2(7, "cache %08x: name %s refcnt %d flags %04x mode %04o "
		"uid %d gid %d client %s server %s ncreds %d",
		p, p->name, p->refcnt, p->flags, p->mode, p->uid, p->gid,
		(cpn == NULL) ? "<none>" : cpn,
		(spn == NULL) ? "<none>" : spn,
		ncreds);

	if (cpn != NULL)
	    FUNC1(cpn);
	if (spn != NULL)
	    FUNC1(spn);
    }

    return 0;
}