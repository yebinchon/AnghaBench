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
typedef  int u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct sshcipher_ctx {int /*<<< orphan*/  cp_ctx; TYPE_1__* cipher; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int CFLAG_CHACHAPOLY ; 
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int SSH_ERR_MESSAGE_INCOMPLETE ; 
 int FUNC1 (int /*<<< orphan*/ *,int*,int,int /*<<< orphan*/  const*,int) ; 

int
FUNC2(struct sshcipher_ctx *cc, u_int *plenp, u_int seqnr,
    const u_char *cp, u_int len)
{
	if ((cc->cipher->flags & CFLAG_CHACHAPOLY) != 0)
		return FUNC1(&cc->cp_ctx, plenp, seqnr,
		    cp, len);
	if (len < 4)
		return SSH_ERR_MESSAGE_INCOMPLETE;
	*plenp = FUNC0(cp);
	return 0;
}