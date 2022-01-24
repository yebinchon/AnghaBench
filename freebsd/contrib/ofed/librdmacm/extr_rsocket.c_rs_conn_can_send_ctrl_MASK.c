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
struct rsocket {int state; } ;

/* Variables and functions */
 int rs_connected ; 
 scalar_t__ FUNC0 (struct rsocket*) ; 

__attribute__((used)) static int FUNC1(struct rsocket *rs)
{
	return FUNC0(rs) || !(rs->state & rs_connected);
}