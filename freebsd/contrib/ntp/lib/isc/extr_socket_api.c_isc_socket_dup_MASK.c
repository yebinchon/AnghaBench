#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_1__* methods; } ;
typedef  TYPE_2__ isc_socket_t ;
typedef  int /*<<< orphan*/  isc_result_t ;
struct TYPE_8__ {int /*<<< orphan*/  (* dup ) (TYPE_2__*,TYPE_2__**) ;} ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_2__**) ; 

isc_result_t
FUNC3(isc_socket_t *sock, isc_socket_t **socketp) {
	FUNC1(FUNC0(sock));
	FUNC1(socketp != NULL && *socketp == NULL);

	return(sock->methods->dup(sock, socketp));
}