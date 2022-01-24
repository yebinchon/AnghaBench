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
struct nv {int /*<<< orphan*/  nv_ebuf; scalar_t__ nv_magic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nv*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nv*) ; 

void
FUNC3(struct nv *nv)
{

	if (nv == NULL)
		return;

	FUNC0(nv);

	nv->nv_magic = 0;
	FUNC1(nv->nv_ebuf);
	FUNC2(nv);
}