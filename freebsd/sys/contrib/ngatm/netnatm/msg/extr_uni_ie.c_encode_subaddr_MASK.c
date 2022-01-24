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
struct uni_subaddr {int type; int /*<<< orphan*/  len; int /*<<< orphan*/  addr; } ;
struct uni_msg {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct uni_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct uni_msg*,int) ; 

__attribute__((used)) static void
FUNC2(struct uni_msg *msg, struct uni_subaddr *addr)
{
	FUNC1(msg, 0x80|(addr->type<<4));
	FUNC0(msg, addr->addr, addr->len);
}