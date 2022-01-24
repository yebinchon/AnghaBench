#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_2__* s3; } ;
struct TYPE_6__ {int /*<<< orphan*/  const* peer_sigalg; } ;
struct TYPE_7__ {TYPE_1__ tmp; } ;
typedef  TYPE_3__ SSL ;
typedef  int /*<<< orphan*/  SIGALG_LOOKUP ;
typedef  int /*<<< orphan*/  EVP_PKEY ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/  const*,size_t*) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_3__*,size_t) ; 

int FUNC2(SSL *s, const EVP_PKEY *pkey)
{
    size_t idx;
    const SIGALG_LOOKUP *lu;

    if (FUNC0(pkey, &idx) == NULL)
        return 0;
    lu = FUNC1(s, idx);
    if (lu == NULL)
        return 0;
    s->s3->tmp.peer_sigalg = lu;
    return 1;
}