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
 scalar_t__ INT_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct pt_packet_decoder*) ; 
 int FUNC1 (struct pt_packet_decoder*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct pt_packet_decoder*) ; 
 int FUNC3 (struct pt_packet_decoder*,scalar_t__*) ; 
 int FUNC4 (struct pt_packet_decoder*,scalar_t__) ; 
 int FUNC5 (struct pt_query_decoder const*,scalar_t__*) ; 
 int pte_internal ; 
 int pte_overflow ; 

__attribute__((used)) static int FUNC6(const struct pt_query_decoder *decoder)
{
	struct pt_packet_decoder pkt;
	uint64_t begin, end, offset;
	int status;

	if (!decoder)
		return -pte_internal;

	status = FUNC5(decoder, &begin);
	if (status < 0)
		return status;

	status = FUNC1(&pkt, &decoder->config);
	if (status < 0)
		return status;

	status = FUNC4(&pkt, begin);
	if (status >= 0) {
		status = FUNC2(&pkt);
		if (status > 0) {
			status = FUNC3(&pkt, &end);
			if (status < 0)
				return status;

			if (end <= begin)
				return -pte_overflow;

			offset = end - begin;
			if (INT_MAX < offset)
				return -pte_overflow;

			status = (int) offset;
		}
	}

	FUNC0(&pkt);
	return status;
}