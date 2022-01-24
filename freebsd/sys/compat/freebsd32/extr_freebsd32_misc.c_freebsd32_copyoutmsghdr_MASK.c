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
struct msghdr32 {int /*<<< orphan*/  msg_flags; int /*<<< orphan*/  msg_controllen; void* msg_control; int /*<<< orphan*/  msg_iovlen; void* msg_iov; int /*<<< orphan*/  msg_namelen; void* msg_name; } ;
struct msghdr {int /*<<< orphan*/  msg_flags; int /*<<< orphan*/  msg_controllen; int /*<<< orphan*/  msg_control; int /*<<< orphan*/  msg_iovlen; int /*<<< orphan*/  msg_iov; int /*<<< orphan*/  msg_namelen; int /*<<< orphan*/  msg_name; } ;
typedef  int /*<<< orphan*/  m32 ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct msghdr32*,struct msghdr32*,int) ; 

__attribute__((used)) static int
FUNC2(struct msghdr *msg, struct msghdr32 *msg32)
{
	struct msghdr32 m32;
	int error;

	m32.msg_name = FUNC0(msg->msg_name);
	m32.msg_namelen = msg->msg_namelen;
	m32.msg_iov = FUNC0(msg->msg_iov);
	m32.msg_iovlen = msg->msg_iovlen;
	m32.msg_control = FUNC0(msg->msg_control);
	m32.msg_controllen = msg->msg_controllen;
	m32.msg_flags = msg->msg_flags;
	error = FUNC1(&m32, msg32, sizeof(m32));
	return (error);
}