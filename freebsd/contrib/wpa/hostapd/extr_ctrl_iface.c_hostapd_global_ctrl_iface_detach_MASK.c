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
struct sockaddr_storage {int dummy; } ;
struct hapd_interfaces {int /*<<< orphan*/  global_ctrl_dst; } ;
typedef  int /*<<< orphan*/  socklen_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,struct sockaddr_storage*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct hapd_interfaces *interfaces,
					    struct sockaddr_storage *from,
					    socklen_t fromlen)
{
	return FUNC0(&interfaces->global_ctrl_dst, from, fromlen);
}