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
typedef  int /*<<< orphan*/  krb5_context ;
struct TYPE_6__ {int /*<<< orphan*/  keyblock; int /*<<< orphan*/ * keytab; } ;
struct TYPE_7__ {int flags; int uid; int gid; int session; int /*<<< orphan*/  mutex; scalar_t__ refcnt; int /*<<< orphan*/ * next; scalar_t__ renew_life; scalar_t__ tkt_life; scalar_t__ mode; TYPE_1__ key; int /*<<< orphan*/ * name; } ;
typedef  TYPE_2__ kcm_ccache_data ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int KCM_FLAGS_USE_CACHED_KEY ; 
 int KCM_FLAGS_USE_KEYTAB ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(krb5_context context,
			      kcm_ccache_data *cache)
{
    FUNC2(cache);

    if (cache->name != NULL) {
	FUNC3(cache->name);
	cache->name = NULL;
    }

    if (cache->flags & KCM_FLAGS_USE_KEYTAB) {
	FUNC7(context, cache->key.keytab);
	cache->key.keytab = NULL;
    } else if (cache->flags & KCM_FLAGS_USE_CACHED_KEY) {
	FUNC5(context, &cache->key.keyblock);
	FUNC6(&cache->key.keyblock);
    }

    cache->flags = 0;
    cache->mode = 0;
    cache->uid = -1;
    cache->gid = -1;
    cache->session = -1;

    FUNC4(context, cache);

    cache->tkt_life = 0;
    cache->renew_life = 0;

    cache->next = NULL;
    cache->refcnt = 0;

    FUNC1(&cache->mutex);
    FUNC0(&cache->mutex);
}