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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;

/* Variables and functions */
 int FUNC0 (char**,size_t*,int /*<<< orphan*/ *,size_t,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,size_t,size_t) ; 

int FUNC2(uint8_t* rr, size_t rrlen, size_t dname_len,
	char* s, size_t slen)
{
	uint16_t rrtype = FUNC1(rr, rrlen, dname_len);
	return FUNC0(&s, &slen, rr, rrlen, dname_len,
		rrtype);
}