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
typedef  scalar_t__ u_char ;

/* Variables and functions */
 scalar_t__ SSH_AGENT_SUCCESS ; 
 int SSH_ERR_AGENT_FAILURE ; 
 int SSH_ERR_INVALID_FORMAT ; 
 scalar_t__ FUNC0 (scalar_t__) ; 

__attribute__((used)) static int
FUNC1(u_char type)
{
	if (FUNC0(type))
		return SSH_ERR_AGENT_FAILURE;
	else if (type == SSH_AGENT_SUCCESS)
		return 0;
	else
		return SSH_ERR_INVALID_FORMAT;
}