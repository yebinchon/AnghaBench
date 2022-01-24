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

/* Variables and functions */
 int /*<<< orphan*/  free ; 
 int /*<<< orphan*/  tcp_key ; 
 void* tcp_key_error ; 
 void* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  udp_key ; 
 void* udp_key_error ; 

__attribute__((used)) static void
FUNC1(void)
{

	tcp_key_error = FUNC0(&tcp_key, free);
	udp_key_error = FUNC0(&udp_key, free);
}