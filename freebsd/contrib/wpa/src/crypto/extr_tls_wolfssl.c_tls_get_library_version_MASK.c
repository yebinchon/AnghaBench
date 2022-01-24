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
 int /*<<< orphan*/  WOLFSSL_VERSION ; 
 int FUNC0 (char*,size_t,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 

int FUNC2(char *buf, size_t buf_len)
{
	return FUNC0(buf, buf_len, "wolfSSL build=%s run=%s",
			   WOLFSSL_VERSION, FUNC1());
}