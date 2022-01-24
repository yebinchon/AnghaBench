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
typedef  int /*<<< orphan*/  isc_sockaddr_t ;
typedef  int /*<<< orphan*/  isc_netaddr_t ;
typedef  int /*<<< orphan*/  isc_boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

isc_boolean_t
FUNC2(const isc_sockaddr_t *a, const isc_sockaddr_t *b,
			  unsigned int prefixlen)
{
	isc_netaddr_t na, nb;
	FUNC1(&na, a);
	FUNC1(&nb, b);
	return (FUNC0(&na, &nb, prefixlen));
}