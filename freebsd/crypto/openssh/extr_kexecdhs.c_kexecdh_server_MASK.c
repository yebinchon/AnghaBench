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
struct ssh {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SSH2_MSG_KEX_ECDH_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  input_kex_ecdh_init ; 
 int /*<<< orphan*/  FUNC1 (struct ssh*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC2(struct ssh *ssh)
{
	FUNC0("expecting SSH2_MSG_KEX_ECDH_INIT");
	FUNC1(ssh, SSH2_MSG_KEX_ECDH_INIT, &input_kex_ecdh_init);
	return 0;
}