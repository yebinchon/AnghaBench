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
typedef  scalar_t__ u_int32_t ;
typedef  int /*<<< orphan*/  u_char ;
struct sctphdr {int src_port; int dest_port; scalar_t__ v_tag; } ;
struct sctp_init_chunk {int dummy; } ;

/* Variables and functions */
 scalar_t__ fixedPort ; 
 scalar_t__ ident ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ port ; 
 int protlen ; 

int
FUNC1(const u_char *data, int seq)
{
	struct sctphdr *const sctp = (struct sctphdr *) data;

	if (FUNC0(sctp->src_port) != ident ||
	    FUNC0(sctp->dest_port) != port + (fixedPort ? 0 : seq))
		return (0);
	if (protlen < (int)(sizeof(struct sctphdr) +
	    sizeof(struct sctp_init_chunk))) {
		return (sctp->v_tag ==
		    (u_int32_t)((sctp->src_port << 16) | sctp->dest_port));
	} else {
		/*
		 * Don't verify the initiate_tag, since it is not available,
		 * most of the time.
		 */
		return (sctp->v_tag == 0);
	}
}