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
struct peer {struct peer* p_link; } ;

/* Variables and functions */
 struct peer* peer_list ; 
 int /*<<< orphan*/  FUNC0 (struct peer*) ; 

void
FUNC1(void)
{
	struct peer *peer;

	for (peer = peer_list; peer != NULL; peer = peer->p_link)
		FUNC0(peer);
}