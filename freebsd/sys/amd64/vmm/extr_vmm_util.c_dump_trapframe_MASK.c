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
struct trapframe {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  addr ; 
 int /*<<< orphan*/  cs ; 
 int /*<<< orphan*/  ds ; 
 int /*<<< orphan*/  err ; 
 int /*<<< orphan*/  es ; 
 int /*<<< orphan*/  flags ; 
 int /*<<< orphan*/  fs ; 
 int /*<<< orphan*/  gs ; 
 int /*<<< orphan*/  r10 ; 
 int /*<<< orphan*/  r11 ; 
 int /*<<< orphan*/  r12 ; 
 int /*<<< orphan*/  r13 ; 
 int /*<<< orphan*/  r14 ; 
 int /*<<< orphan*/  r15 ; 
 int /*<<< orphan*/  r8 ; 
 int /*<<< orphan*/  r9 ; 
 int /*<<< orphan*/  rax ; 
 int /*<<< orphan*/  rbp ; 
 int /*<<< orphan*/  rbx ; 
 int /*<<< orphan*/  rcx ; 
 int /*<<< orphan*/  rdi ; 
 int /*<<< orphan*/  rdx ; 
 int /*<<< orphan*/  rflags ; 
 int /*<<< orphan*/  rip ; 
 int /*<<< orphan*/  rsi ; 
 int /*<<< orphan*/  rsp ; 
 int /*<<< orphan*/  ss ; 
 int /*<<< orphan*/  trapno ; 

void
FUNC2(struct trapframe *tf)
{
	FUNC0(rdi);
	FUNC0(rsi);
	FUNC0(rdx);
	FUNC0(rcx);
	FUNC0(r8);
	FUNC0(r9);
	FUNC0(rax);
	FUNC0(rbx);
	FUNC0(rbp);
	FUNC0(r10);
	FUNC0(r11);
	FUNC0(r12);
	FUNC0(r13);
	FUNC0(r14);
	FUNC0(r15);
	FUNC0(trapno);
	FUNC0(addr);
	FUNC0(flags);
	FUNC0(err);
	FUNC0(rip);
	FUNC0(rflags);
	FUNC0(rsp);
	FUNC1(cs);
	FUNC1(ss);
	FUNC1(fs);
	FUNC1(gs);
	FUNC1(es);
	FUNC1(ds);
}