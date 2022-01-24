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
 int KRB5_KRBHST_HTTP ; 
 int KRB5_KRBHST_TCP ; 
 int KRB5_KRBHST_UDP ; 
 scalar_t__ FUNC0 (char const*,char*) ; 

__attribute__((used)) static int
FUNC1(const char *string)
{
    if(FUNC0(string, "udp") == 0)
	return KRB5_KRBHST_UDP;
    else if(FUNC0(string, "tcp") == 0)
	return KRB5_KRBHST_TCP;
    else if(FUNC0(string, "http") == 0)
	return KRB5_KRBHST_HTTP;
    return -1;
}