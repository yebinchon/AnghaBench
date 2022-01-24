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
struct pt_query_decoder {int /*<<< orphan*/  config; int /*<<< orphan*/  ip; int /*<<< orphan*/  pos; } ;
struct pt_packet_ip {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,struct pt_packet_ip*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct pt_packet_ip*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int pte_internal ; 

__attribute__((used)) static int FUNC2(struct pt_query_decoder *decoder)
{
	struct pt_packet_ip packet;
	int errcode, size;

	if (!decoder)
		return -pte_internal;

	size = FUNC1(&packet, decoder->pos, &decoder->config);
	if (size < 0)
		return size;

	errcode = FUNC0(&decoder->ip, &packet, &decoder->config);
	if (errcode < 0)
		return errcode;

	/* We do not update the decoder's position, yet. */

	return size;
}