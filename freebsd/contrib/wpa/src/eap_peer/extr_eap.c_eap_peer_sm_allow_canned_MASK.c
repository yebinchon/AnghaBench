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
struct eap_sm {int dummy; } ;
struct eap_peer_config {scalar_t__ phase1; } ;

/* Variables and functions */
 struct eap_peer_config* FUNC0 (struct eap_sm*) ; 
 scalar_t__ FUNC1 (scalar_t__,char*) ; 

__attribute__((used)) static int FUNC2(struct eap_sm *sm)
{
	struct eap_peer_config *config = FUNC0(sm);

	return config && config->phase1 &&
		FUNC1(config->phase1, "allow_canned_success=1");
}