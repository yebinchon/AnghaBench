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
struct connection_info {int /*<<< orphan*/  rdomain; int /*<<< orphan*/  lport; int /*<<< orphan*/  laddress; int /*<<< orphan*/  address; int /*<<< orphan*/  host; } ;

/* Variables and functions */
 struct ssh* active_state ; 
 int /*<<< orphan*/  FUNC0 (struct ssh*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ssh*) ; 
 int /*<<< orphan*/  FUNC2 (struct ssh*) ; 
 int /*<<< orphan*/  FUNC3 (struct ssh*) ; 
 int /*<<< orphan*/  FUNC4 (struct ssh*) ; 

struct connection_info *
FUNC5(int populate, int use_dns)
{
	struct ssh *ssh = active_state; /* XXX */
	static struct connection_info ci;

	if (!populate)
		return &ci;
	ci.host = FUNC0(ssh, use_dns);
	ci.address = FUNC4(ssh);
	ci.laddress = FUNC1(ssh);
	ci.lport = FUNC2(ssh);
	ci.rdomain = FUNC3(ssh);
	return &ci;
}