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
typedef  scalar_t__ uint64_t ;
struct pt_query_decoder {int /*<<< orphan*/  config; } ;
struct pt_packet_decoder {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct pt_query_decoder*,struct pt_packet_decoder*,unsigned int) ; 
 int FUNC1 (struct pt_packet_decoder*) ; 
 int /*<<< orphan*/  FUNC2 (struct pt_packet_decoder*) ; 
 int FUNC3 (struct pt_packet_decoder*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct pt_packet_decoder*,scalar_t__) ; 
 int FUNC5 (struct pt_query_decoder*,scalar_t__*) ; 
 int pte_internal ; 

__attribute__((used)) static int FUNC6(struct pt_query_decoder *decoder,
			       unsigned int offset)
{
	struct pt_packet_decoder pkt;
	uint64_t here;
	int status;

	if (!decoder)
		return -pte_internal;

	status = FUNC5(decoder, &here);
	if (status < 0)
		return status;

	status = FUNC3(&pkt, &decoder->config);
	if (status < 0)
		return status;

	status = FUNC4(&pkt, here + offset);
	if (status >= 0) {
		status = FUNC1(&pkt);
		if (!status)
			status = FUNC0(decoder, &pkt, offset);
	}

	FUNC2(&pkt);
	return status;
}