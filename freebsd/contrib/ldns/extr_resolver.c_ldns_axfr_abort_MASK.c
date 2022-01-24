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
struct TYPE_3__ {scalar_t__ _socket; } ;
typedef  TYPE_1__ ldns_resolver ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

void
FUNC2(ldns_resolver *resolver)
{
	/* Only abort if an actual AXFR is in progress */
	if (resolver->_socket != 0)
	{
#ifndef USE_WINSOCK
		FUNC0(resolver->_socket);
#else
		closesocket(resolver->_socket);
#endif
		resolver->_socket = 0;
	}
}