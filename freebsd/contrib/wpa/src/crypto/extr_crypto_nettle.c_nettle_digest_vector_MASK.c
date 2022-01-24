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
typedef  int /*<<< orphan*/  u8 ;
struct nettle_hash {int /*<<< orphan*/  context_size; int /*<<< orphan*/  digest_size; int /*<<< orphan*/  (* digest ) (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* update ) (void*,size_t const,int /*<<< orphan*/  const*) ;int /*<<< orphan*/  (* init ) (void*) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (void*,size_t const,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(const struct nettle_hash *alg, size_t num_elem,
				const u8 *addr[], const size_t *len, u8 *mac)
{
	void *ctx;
	size_t i;

	if (FUNC0())
		return -1;

	ctx = FUNC2(alg->context_size);
	if (!ctx)
		return -1;
	alg->init(ctx);
	for (i = 0; i < num_elem; i++)
		alg->update(ctx, len[i], addr[i]);
	alg->digest(ctx, alg->digest_size, mac);
	FUNC1(ctx, alg->context_size);
	return 0;
}