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
typedef  int /*<<< orphan*/  krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
struct TYPE_4__ {int /*<<< orphan*/ * server; int /*<<< orphan*/ * client; } ;
typedef  TYPE_1__ kcm_ccache_data ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

krb5_error_code
FUNC2(krb5_context context,
			      kcm_ccache_data *cache)
{
    if (cache->client != NULL) {
	FUNC1(context, cache->client);
	cache->client = NULL;
    }

    if (cache->server != NULL) {
	FUNC1(context, cache->server);
	cache->server = NULL;
    }

    FUNC0(context, cache);

    return 0;
}