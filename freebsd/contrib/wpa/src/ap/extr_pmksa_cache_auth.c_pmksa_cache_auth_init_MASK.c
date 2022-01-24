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
struct rsn_pmksa_cache {void (* free_cb ) (struct rsn_pmksa_cache_entry*,void*) ;void* ctx; } ;

/* Variables and functions */
 struct rsn_pmksa_cache* FUNC0 (int) ; 

struct rsn_pmksa_cache *
FUNC1(void (*free_cb)(struct rsn_pmksa_cache_entry *entry,
				      void *ctx), void *ctx)
{
	struct rsn_pmksa_cache *pmksa;

	pmksa = FUNC0(sizeof(*pmksa));
	if (pmksa) {
		pmksa->free_cb = free_cb;
		pmksa->ctx = ctx;
	}

	return pmksa;
}