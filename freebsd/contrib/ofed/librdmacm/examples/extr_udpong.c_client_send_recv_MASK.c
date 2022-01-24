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
typedef  scalar_t__ uint8_t ;
struct message {scalar_t__ seqno; } ;

/* Variables and functions */
 int FUNC0 (struct message*,size_t,int) ; 
 int FUNC1 (struct message*,size_t) ; 

__attribute__((used)) static int FUNC2(struct message *msg, size_t size, int timeout)
{
	static uint8_t seqno;
	int ret;

	msg->seqno = seqno;
	do {
		ret = FUNC1(msg, size);
		if (ret != size)
			return ret;

		ret = FUNC0(msg, size, timeout);
	} while (ret <= 0 || msg->seqno != seqno);

	seqno++;
	return ret;
}