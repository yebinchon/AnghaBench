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
struct tac_handle {int /*<<< orphan*/  srvr_msg; } ;

/* Variables and functions */
 char* FUNC0 (struct tac_handle*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

char *
FUNC1(struct tac_handle *h)
{
	return FUNC0(h, &h->srvr_msg, NULL);
}