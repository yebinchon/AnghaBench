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
struct evrpc_base {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct evrpc_base*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Message ; 
 int /*<<< orphan*/  NeverReply ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct evrpc_base*) ; 

__attribute__((used)) static void
FUNC3(struct evrpc_base *base)
{
	FUNC1(FUNC0(base, Message) == 0);
	FUNC1(FUNC0(base, NeverReply) == 0);

	FUNC2(base);
}