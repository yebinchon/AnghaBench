#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  rnd ;
struct TYPE_4__ {int /*<<< orphan*/  g; int /*<<< orphan*/  N; int /*<<< orphan*/  a; int /*<<< orphan*/  A; } ;
struct TYPE_5__ {TYPE_1__ srp_ctx; } ;
typedef  TYPE_2__ SSL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int) ; 
 scalar_t__ FUNC2 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int SSL_MAX_MASTER_KEY_LENGTH ; 

int FUNC4(SSL *s)
{
    unsigned char rnd[SSL_MAX_MASTER_KEY_LENGTH];

    if (FUNC2(rnd, sizeof(rnd)) <= 0)
        return 0;
    s->srp_ctx.a = FUNC0(rnd, sizeof(rnd), s->srp_ctx.a);
    FUNC1(rnd, sizeof(rnd));

    if (!(s->srp_ctx.A = FUNC3(s->srp_ctx.a, s->srp_ctx.N, s->srp_ctx.g)))
        return 0;

    return 1;
}