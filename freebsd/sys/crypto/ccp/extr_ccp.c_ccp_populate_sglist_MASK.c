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
struct sglist {int dummy; } ;
struct cryptop {int crp_flags; int /*<<< orphan*/  crp_ilen; int /*<<< orphan*/  crp_buf; int /*<<< orphan*/  crp_uio; int /*<<< orphan*/  crp_mbuf; } ;

/* Variables and functions */
 int CRYPTO_F_IMBUF ; 
 int CRYPTO_F_IOV ; 
 int FUNC0 (struct sglist*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct sglist*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct sglist*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sglist*) ; 

__attribute__((used)) static int
FUNC4(struct sglist *sg, struct cryptop *crp)
{
	int error;

	FUNC3(sg);
	if (crp->crp_flags & CRYPTO_F_IMBUF)
		error = FUNC1(sg, crp->crp_mbuf);
	else if (crp->crp_flags & CRYPTO_F_IOV)
		error = FUNC2(sg, crp->crp_uio);
	else
		error = FUNC0(sg, crp->crp_buf, crp->crp_ilen);
	return (error);
}