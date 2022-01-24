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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct pt_packet_decoder {int dummy; } ;
struct pt_config {int /*<<< orphan*/  const* begin; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pt_packet_decoder*) ; 
 int FUNC1 (struct pt_packet_decoder*,struct pt_config const*) ; 
 int FUNC2 (struct pt_packet_decoder*,int /*<<< orphan*/ ) ; 
 int pte_internal ; 
 int FUNC3 (struct pt_packet_decoder*) ; 

__attribute__((used)) static int FUNC4(const uint8_t *pos,
			       const struct pt_config *config)
{
	struct pt_packet_decoder decoder;
	int errcode;

	if (!pos || !config)
		return -pte_internal;

	errcode = FUNC1(&decoder, config);
	if (errcode < 0)
		return errcode;

	errcode = FUNC2(&decoder, (uint64_t) (pos - config->begin));
	if (errcode >= 0)
		errcode = FUNC3(&decoder);

	FUNC0(&decoder);
	return errcode;
}