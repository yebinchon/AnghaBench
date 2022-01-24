#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tag ;
struct cryptop {int crp_etype; int /*<<< orphan*/  crp_buf; int /*<<< orphan*/  crp_flags; struct cryptodesc* crp_desc; } ;
struct cryptodesc {int crd_flags; int /*<<< orphan*/  crd_inject; struct cryptodesc* crd_next; } ;
struct TYPE_2__ {int /*<<< orphan*/  hash_len; int /*<<< orphan*/  final_block; } ;
struct ccp_session {TYPE_1__ gmac; TYPE_1__ blkcipher; int /*<<< orphan*/  pending; scalar_t__ cipher_first; } ;
struct ccp_queue {int dummy; } ;

/* Variables and functions */
 int CRD_F_ENCRYPT ; 
 int EBADMSG ; 
 int GMAC_DIGEST_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct cryptop*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct ccp_queue *qp, struct ccp_session *s, void *vcrp,
    int error)
{
	char tag[GMAC_DIGEST_LEN];
	struct cryptodesc *crde, *crda;
	struct cryptop *crp;

	crp = vcrp;
	if (s->cipher_first) {
		crde = crp->crp_desc;
		crda = crp->crp_desc->crd_next;
	} else {
		crde = crp->crp_desc->crd_next;
		crda = crp->crp_desc;
	}

	s->pending--;

	if (error != 0) {
		crp->crp_etype = error;
		goto out;
	}

	/* Encrypt is done.  Decrypt needs to verify tag. */
	if ((crde->crd_flags & CRD_F_ENCRYPT) != 0)
		goto out;

	/* Copy in message tag. */
	FUNC0(crp->crp_flags, crp->crp_buf, crda->crd_inject,
	    sizeof(tag), tag);

	/* Verify tag against computed GMAC */
	if (FUNC3(tag, s->gmac.final_block, s->gmac.hash_len) != 0)
		crp->crp_etype = EBADMSG;

out:
	FUNC2(&s->blkcipher, sizeof(s->blkcipher));
	FUNC2(&s->gmac, sizeof(s->gmac));
	FUNC1(crp);
}