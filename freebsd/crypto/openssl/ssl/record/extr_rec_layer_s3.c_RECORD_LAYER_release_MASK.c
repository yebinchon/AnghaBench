#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ numwpipes; int /*<<< orphan*/  rrec; int /*<<< orphan*/  s; int /*<<< orphan*/  rbuf; } ;
typedef  TYPE_1__ RECORD_LAYER ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SSL_MAX_PIPELINES ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(RECORD_LAYER *rl)
{
    if (FUNC0(&rl->rbuf))
        FUNC2(rl->s);
    if (rl->numwpipes > 0)
        FUNC3(rl->s);
    FUNC1(rl->rrec, SSL_MAX_PIPELINES);
}