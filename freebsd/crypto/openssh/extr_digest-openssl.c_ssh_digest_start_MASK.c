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
struct ssh_digest_ctx {int alg; int /*<<< orphan*/ * mdctx; } ;
struct ssh_digest {int /*<<< orphan*/  (* mdfunc ) () ;} ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 struct ssh_digest_ctx* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ssh_digest_ctx*) ; 
 struct ssh_digest* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct ssh_digest_ctx*) ; 
 int /*<<< orphan*/  FUNC6 () ; 

struct ssh_digest_ctx *
FUNC7(int alg)
{
	const struct ssh_digest *digest = FUNC4(alg);
	struct ssh_digest_ctx *ret;

	if (digest == NULL || ((ret = FUNC2(1, sizeof(*ret))) == NULL))
		return NULL;
	ret->alg = alg;
	if ((ret->mdctx = FUNC1()) == NULL) {
		FUNC3(ret);
		return NULL;
	}
	if (FUNC0(ret->mdctx, digest->mdfunc(), NULL) != 1) {
		FUNC5(ret);
		return NULL;
	}
	return ret;
}