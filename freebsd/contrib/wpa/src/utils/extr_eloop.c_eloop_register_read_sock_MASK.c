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
typedef  int /*<<< orphan*/  eloop_sock_handler ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT_TYPE_READ ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,void*) ; 

int FUNC1(int sock, eloop_sock_handler handler,
			     void *eloop_data, void *user_data)
{
	return FUNC0(sock, EVENT_TYPE_READ, handler,
				   eloop_data, user_data);
}