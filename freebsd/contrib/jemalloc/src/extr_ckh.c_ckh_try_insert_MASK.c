#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int lg_curbuckets; int /*<<< orphan*/  (* hash ) (void const*,size_t*) ;} ;
typedef  TYPE_1__ ckh_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*,size_t,void const**,void const**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,size_t,void const*,void const*) ; 
 int /*<<< orphan*/  FUNC3 (void const*,size_t*) ; 

__attribute__((used)) static bool
FUNC4(ckh_t *ckh, void const**argkey, void const**argdata) {
	size_t hashes[2], bucket;
	const void *key = *argkey;
	const void *data = *argdata;

	ckh->hash(key, hashes);

	/* Try to insert in primary bucket. */
	bucket = hashes[0] & ((FUNC0(1) << ckh->lg_curbuckets) - 1);
	if (!FUNC2(ckh, bucket, key, data)) {
		return false;
	}

	/* Try to insert in secondary bucket. */
	bucket = hashes[1] & ((FUNC0(1) << ckh->lg_curbuckets) - 1);
	if (!FUNC2(ckh, bucket, key, data)) {
		return false;
	}

	/*
	 * Try to find a place for this item via iterative eviction/relocation.
	 */
	return FUNC1(ckh, bucket, argkey, argdata);
}