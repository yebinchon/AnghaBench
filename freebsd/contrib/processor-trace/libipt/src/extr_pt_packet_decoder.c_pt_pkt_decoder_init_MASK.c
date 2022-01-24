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
struct pt_packet_decoder {int /*<<< orphan*/  config; } ;
struct pt_config {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pt_packet_decoder*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct pt_config const*) ; 
 int pte_invalid ; 

int FUNC2(struct pt_packet_decoder *decoder,
			const struct pt_config *config)
{
	int errcode;

	if (!decoder || !config)
		return -pte_invalid;

	FUNC0(decoder, 0, sizeof(*decoder));

	errcode = FUNC1(&decoder->config, config);
	if (errcode < 0)
		return errcode;

	return 0;
}