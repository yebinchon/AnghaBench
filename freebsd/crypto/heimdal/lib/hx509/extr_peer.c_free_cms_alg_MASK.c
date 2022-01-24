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
typedef  TYPE_1__* hx509_peer_info ;
struct TYPE_3__ {size_t len; int /*<<< orphan*/ * val; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(hx509_peer_info peer)
{
    if (peer->val) {
	size_t i;
	for (i = 0; i < peer->len; i++)
	    FUNC1(&peer->val[i]);
	FUNC0(peer->val);
	peer->val = NULL;
	peer->len = 0;
    }
}