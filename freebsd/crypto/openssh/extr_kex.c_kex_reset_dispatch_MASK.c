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
 int /*<<< orphan*/  SSH2_MSG_TRANSPORT_MAX ; 
 int /*<<< orphan*/  SSH2_MSG_TRANSPORT_MIN ; 
 int /*<<< orphan*/  kex_protocol_error ; 
 int /*<<< orphan*/  FUNC0 (struct ssh*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC1(struct ssh *ssh)
{
	FUNC0(ssh, SSH2_MSG_TRANSPORT_MIN,
	    SSH2_MSG_TRANSPORT_MAX, &kex_protocol_error);
}