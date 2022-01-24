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
struct pt_packet {int /*<<< orphan*/  type; } ;
struct pt_encoder {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ppt_stop ; 
 int FUNC0 (struct pt_encoder*,struct pt_packet*) ; 

int FUNC1(struct pt_encoder *encoder)
{
	struct pt_packet packet;

	packet.type = ppt_stop;

	return FUNC0(encoder, &packet);
}