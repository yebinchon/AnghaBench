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
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  sldns_buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC4(sldns_buffer* buff, uint8_t* qname, size_t qnamelen, 
	uint16_t qtype, uint16_t qclass, uint16_t flags)
{
	FUNC0(buff);
	/* skip id */
	FUNC3(buff, flags);
	FUNC3(buff, 1); /* qdcount */
	FUNC3(buff, 0); /* ancount */
	FUNC3(buff, 0); /* nscount */
	FUNC3(buff, 0); /* arcount */
	FUNC2(buff, qname, qnamelen);
	FUNC3(buff, qtype);
	FUNC3(buff, qclass);
	FUNC1(buff);
}