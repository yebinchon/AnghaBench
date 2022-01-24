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
 int /*<<< orphan*/  FUNC0 (struct pt_packet_decoder*) ; 
 int FUNC1 (struct pt_packet_decoder*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct pt_packet_decoder*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct pt_query_decoder*,int /*<<< orphan*/ *) ; 
 int pte_internal ; 
 int FUNC4 (struct pt_packet_decoder*,struct pt_query_decoder*) ; 

__attribute__((used)) static int FUNC5(struct pt_query_decoder *decoder)
{
	struct pt_packet_decoder pkt;
	uint64_t offset;
	int errcode;

	if (!decoder)
		return -pte_internal;

	errcode = FUNC3(decoder, &offset);
	if (errcode < 0)
		return errcode;

	errcode = FUNC1(&pkt, &decoder->config);
	if (errcode < 0)
		return errcode;

	errcode = FUNC2(&pkt, offset);
	if (errcode >= 0)
		errcode = FUNC4(&pkt, decoder);

	FUNC0(&pkt);
	return errcode;
}