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
typedef  size_t u_int ;
struct tac_handle {int /*<<< orphan*/ * srvr_avs; } ;

/* Variables and functions */
 size_t MAXAVPAIRS ; 
 char* FUNC0 (struct tac_handle*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

char *
FUNC1(struct tac_handle *h, u_int index)
{
	if (index >= MAXAVPAIRS)
		return NULL;
	return FUNC0(h, &(h->srvr_avs[index]), NULL);
}