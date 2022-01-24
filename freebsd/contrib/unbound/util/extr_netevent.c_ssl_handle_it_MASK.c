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
struct comm_point {scalar_t__ tcp_is_reading; } ;

/* Variables and functions */
 int FUNC0 (struct comm_point*) ; 
 int FUNC1 (struct comm_point*) ; 

__attribute__((used)) static int
FUNC2(struct comm_point* c)
{
	if(c->tcp_is_reading)
		return FUNC0(c);
	return FUNC1(c);
}