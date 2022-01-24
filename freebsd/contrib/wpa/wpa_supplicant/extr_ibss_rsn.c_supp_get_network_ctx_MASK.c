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
struct ibss_rsn_peer {TYPE_1__* ibss_rsn; } ;
struct TYPE_2__ {int /*<<< orphan*/  wpa_s; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void * FUNC1(void *ctx)
{
	struct ibss_rsn_peer *peer = ctx;
	return FUNC0(peer->ibss_rsn->wpa_s);
}