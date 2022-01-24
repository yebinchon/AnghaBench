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
typedef  int /*<<< orphan*/  u_int ;
struct block {int dummy; } ;
typedef  int /*<<< orphan*/  compiler_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_B ; 
 int /*<<< orphan*/  OR_LINKPL ; 
#define  Q_IP 129 
#define  Q_IPV6 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct block*,struct block*) ; 
 struct block* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static struct block *
FUNC3(compiler_state_t *cstate, int proto)
{
	struct block *b0, *b1;

        switch (proto) {

        case Q_IP:
                /* match the bottom-of-stack bit */
                b0 = FUNC2(cstate, OR_LINKPL, (u_int)-2, BPF_B, 0x01, 0x01);
                /* match the IPv4 version number */
                b1 = FUNC2(cstate, OR_LINKPL, 0, BPF_B, 0x40, 0xf0);
                FUNC1(b0, b1);
                return b1;

       case Q_IPV6:
                /* match the bottom-of-stack bit */
                b0 = FUNC2(cstate, OR_LINKPL, (u_int)-2, BPF_B, 0x01, 0x01);
                /* match the IPv4 version number */
                b1 = FUNC2(cstate, OR_LINKPL, 0, BPF_B, 0x60, 0xf0);
                FUNC1(b0, b1);
                return b1;

       default:
                FUNC0();
        }
}