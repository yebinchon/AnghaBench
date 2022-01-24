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
struct sshmac {scalar_t__ type; int /*<<< orphan*/ * umac_ctx; int /*<<< orphan*/ * hmac_ctx; } ;

/* Variables and functions */
 scalar_t__ SSH_UMAC ; 
 scalar_t__ SSH_UMAC128 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(struct sshmac *mac)
{
	if (mac->type == SSH_UMAC) {
		if (mac->umac_ctx != NULL)
			FUNC2(mac->umac_ctx);
	} else if (mac->type == SSH_UMAC128) {
		if (mac->umac_ctx != NULL)
			FUNC1(mac->umac_ctx);
	} else if (mac->hmac_ctx != NULL)
		FUNC0(mac->hmac_ctx);
	mac->hmac_ctx = NULL;
	mac->umac_ctx = NULL;
}