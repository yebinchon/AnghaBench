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
struct slabhash {int /*<<< orphan*/ * array; } ;
struct lruhash_entry {int dummy; } ;
typedef  int /*<<< orphan*/  hashvalue_type ;

/* Variables and functions */
 struct lruhash_entry* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int) ; 
 size_t FUNC1 (struct slabhash*,int /*<<< orphan*/ ) ; 

struct lruhash_entry* FUNC2(struct slabhash* sl, 
	hashvalue_type hash, void* key, int wr)
{
	return FUNC0(sl->array[FUNC1(sl, hash)], hash, key, wr);
}