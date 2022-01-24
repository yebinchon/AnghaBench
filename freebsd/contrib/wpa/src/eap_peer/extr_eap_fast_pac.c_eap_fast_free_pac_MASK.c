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
struct eap_fast_pac {struct eap_fast_pac* a_id_info; struct eap_fast_pac* i_id; struct eap_fast_pac* a_id; struct eap_fast_pac* pac_info; struct eap_fast_pac* pac_opaque; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct eap_fast_pac*) ; 

void FUNC1(struct eap_fast_pac *pac)
{
	FUNC0(pac->pac_opaque);
	FUNC0(pac->pac_info);
	FUNC0(pac->a_id);
	FUNC0(pac->i_id);
	FUNC0(pac->a_id_info);
	FUNC0(pac);
}