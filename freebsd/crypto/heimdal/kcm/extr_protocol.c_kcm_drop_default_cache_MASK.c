#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct kcm_default_cache {struct kcm_default_cache* name; struct kcm_default_cache* next; int /*<<< orphan*/  session; int /*<<< orphan*/  uid; } ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  kcm_client ;

/* Variables and functions */
 struct kcm_default_cache* default_caches ; 
 int /*<<< orphan*/  FUNC0 (struct kcm_default_cache*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct kcm_default_cache*,char*) ; 

__attribute__((used)) static void
FUNC3(krb5_context context, kcm_client *client, char *name)
{
    struct kcm_default_cache **c;

    for (c = &default_caches; *c != NULL; c = &(*c)->next) {
	if (!FUNC1(client, (*c)->uid, (*c)->session))
	    continue;
	if (FUNC2((*c)->name, name) == 0) {
	    struct kcm_default_cache *h = *c;
	    *c = (*c)->next;
	    FUNC0(h->name);
	    FUNC0(h);
	    break;
	}
    }
}