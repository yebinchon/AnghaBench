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
struct bpf_program {int dummy; } ;
typedef  int /*<<< orphan*/  pcap_t ;
typedef  int /*<<< orphan*/  bpf_u_int32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct bpf_program*,char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int,int) ; 

int
FUNC3(int snaplen_arg, int linktype_arg,
		    struct bpf_program *program,
	     const char *buf, int optimize, bpf_u_int32 mask)
{
	pcap_t *p;
	int ret;

	p = FUNC2(linktype_arg, snaplen_arg);
	if (p == NULL)
		return (-1);
	ret = FUNC1(p, program, buf, optimize, mask);
	FUNC0(p);
	return (ret);
}