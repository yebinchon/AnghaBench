#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct ssh {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  output; int /*<<< orphan*/  input; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ Channel ;

/* Variables and functions */
 int /*<<< orphan*/  SSH_CHANNEL_OPEN ; 
 int /*<<< orphan*/  FUNC0 (struct ssh*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct ssh*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct ssh*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct ssh *ssh, Channel *c)
{
	c->type = SSH_CHANNEL_OPEN;
	FUNC1(ssh, c);
	FUNC3(c->input);
	FUNC0(ssh, c);
	FUNC3(c->output);
	FUNC2(ssh, c);
}