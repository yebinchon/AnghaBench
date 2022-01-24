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
struct pt_query_decoder {int /*<<< orphan*/  ip; } ;
struct pt_event {int ip_suppressed; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int pte_internal ; 
#define  pte_ip_suppressed 129 
#define  pte_noip 128 

__attribute__((used)) static int FUNC2(uint64_t *ip, struct pt_event *event,
			   const struct pt_query_decoder *decoder)
{
	int errcode;

	if (!decoder)
		return -pte_internal;

	errcode = FUNC1(ip, &decoder->ip);
	if (errcode < 0) {
		switch (FUNC0(errcode)) {
		case pte_noip:
		case pte_ip_suppressed:
			event->ip_suppressed = 1;
			break;

		default:
			return errcode;
		}
	}

	return 0;
}