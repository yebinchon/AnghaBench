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
struct eap_teap_pac {int /*<<< orphan*/  pac_opaque; int /*<<< orphan*/  pac_opaque_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static const char * FUNC2(struct eap_teap_pac *pac,
					      char *pos)
{
	FUNC1(pac->pac_opaque);
	pac->pac_opaque = FUNC0(pos, &pac->pac_opaque_len);
	if (!pac->pac_opaque)
		return "Invalid PAC-Opaque";
	return NULL;
}