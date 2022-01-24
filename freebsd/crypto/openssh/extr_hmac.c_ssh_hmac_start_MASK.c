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
struct ssh_hmac_ctx {int alg; int buf_len; int /*<<< orphan*/ * buf; int /*<<< orphan*/ * ictx; int /*<<< orphan*/ * digest; int /*<<< orphan*/ * octx; } ;

/* Variables and functions */
 void* FUNC0 (int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct ssh_hmac_ctx*) ; 

struct ssh_hmac_ctx *
FUNC4(int alg)
{
	struct ssh_hmac_ctx	*ret;

	if ((ret = FUNC0(1, sizeof(*ret))) == NULL)
		return NULL;
	ret->alg = alg;
	if ((ret->ictx = FUNC2(alg)) == NULL ||
	    (ret->octx = FUNC2(alg)) == NULL ||
	    (ret->digest = FUNC2(alg)) == NULL)
		goto fail;
	ret->buf_len = FUNC1(ret->ictx);
	if ((ret->buf = FUNC0(1, ret->buf_len)) == NULL)
		goto fail;
	return ret;
fail:
	FUNC3(ret);
	return NULL;
}