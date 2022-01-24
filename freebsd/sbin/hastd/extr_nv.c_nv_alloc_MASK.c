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
struct nv {int /*<<< orphan*/  nv_magic; scalar_t__ nv_error; int /*<<< orphan*/ * nv_ebuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  NV_MAGIC ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nv*) ; 
 struct nv* FUNC2 (int) ; 

struct nv *
FUNC3(void)
{
	struct nv *nv;

	nv = FUNC2(sizeof(*nv));
	if (nv == NULL)
		return (NULL);
	nv->nv_ebuf = FUNC0(0);
	if (nv->nv_ebuf == NULL) {
		FUNC1(nv);
		return (NULL);
	}
	nv->nv_error = 0;
	nv->nv_magic = NV_MAGIC;
	return (nv);
}