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
typedef  int /*<<< orphan*/  uint64_t ;
struct pt_query_decoder {int /*<<< orphan*/  config; } ;
struct pt_packet_decoder {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct pt_query_decoder*,struct pt_packet_decoder*) ; 
 int /*<<< orphan*/  FUNC1 (struct pt_packet_decoder*) ; 
 int FUNC2 (struct pt_packet_decoder*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct pt_packet_decoder*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct pt_query_decoder*,int /*<<< orphan*/ *) ; 
 int pte_internal ; 

__attribute__((used)) static int FUNC5(struct pt_query_decoder *decoder)
{
	struct pt_packet_decoder pkt;
	uint64_t offset;
	int status;

	if (!decoder)
		return -pte_internal;

	status = FUNC4(decoder, &offset);
	if (status < 0)
		return status;

	status = FUNC2(&pkt, &decoder->config);
	if (status < 0)
		return status;

	status = FUNC3(&pkt, offset);
	if (status >= 0)
		status = FUNC0(decoder, &pkt);

	FUNC1(&pkt);
	return status;
}