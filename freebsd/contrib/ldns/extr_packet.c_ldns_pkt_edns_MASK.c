#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ _edns_present; } ;
typedef  TYPE_1__ ldns_pkt ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__ const*) ; 
 scalar_t__ FUNC1 (TYPE_1__ const*) ; 
 scalar_t__ FUNC2 (TYPE_1__ const*) ; 
 scalar_t__ FUNC3 (TYPE_1__ const*) ; 

bool
FUNC4(const ldns_pkt *pkt) {
	return (FUNC3(pkt) > 0 ||
		FUNC2(pkt) > 0 ||
		FUNC0(pkt) ||
		FUNC1(pkt) ||
                pkt->_edns_present
	       );
}