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
 int /*<<< orphan*/  EX_DATAERR ; 
 int IPPROTO_SCTP ; 
 int IPPROTO_TCP ; 
 int IPPROTO_UDP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 

__attribute__((used)) static int
FUNC2 (const char* str)
{
	if (!FUNC1 (str, "tcp"))
		return IPPROTO_TCP;

	if (!FUNC1 (str, "udp"))
		return IPPROTO_UDP;

	if (!FUNC1 (str, "sctp"))
		return IPPROTO_SCTP;
	FUNC0 (EX_DATAERR, "unknown protocol %s. Expected sctp, tcp or udp", str);
}