#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int* buf; } ;
typedef  TYPE_1__ isc_portset_t ;
typedef  int /*<<< orphan*/  isc_boolean_t ;
typedef  int in_port_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static inline isc_boolean_t
FUNC1(isc_portset_t *portset, in_port_t port) {
	return (FUNC0((portset->buf[port >> 5] & (1 << (port & 31))) != 0));
}