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
 int MSG_DEBUG ; 
 int MSG_ERROR ; 
 int MSG_EXCESSIVE ; 
 int MSG_INFO ; 
 int MSG_MSGDUMP ; 
 int MSG_WARNING ; 
 scalar_t__ FUNC0 (char const*,char*) ; 

int FUNC1(const char *s)
{
	if (FUNC0(s, "EXCESSIVE") == 0)
		return MSG_EXCESSIVE;
	if (FUNC0(s, "MSGDUMP") == 0)
		return MSG_MSGDUMP;
	if (FUNC0(s, "DEBUG") == 0)
		return MSG_DEBUG;
	if (FUNC0(s, "INFO") == 0)
		return MSG_INFO;
	if (FUNC0(s, "WARNING") == 0)
		return MSG_WARNING;
	if (FUNC0(s, "ERROR") == 0)
		return MSG_ERROR;
	return -1;
}