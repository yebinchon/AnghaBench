#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_short ;
struct TYPE_2__ {int /*<<< orphan*/  sa_family; } ;
struct ifreq {TYPE_1__ ifr_addr; } ;

/* Variables and functions */
 int FUNC0 (struct ifreq*,struct ifreq*,size_t) ; 
 int FUNC1 (struct ifreq*,struct ifreq*,size_t) ; 

__attribute__((used)) static int
FUNC2(struct ifreq *arg)
{
	struct ifreq ifr;
	size_t ifr_len = sizeof(struct ifreq);
	int error;

	if ((error = FUNC0(arg, &ifr, ifr_len)))
		return (error);

	*(u_short *)&ifr.ifr_addr = ifr.ifr_addr.sa_family;

	error = FUNC1(&ifr, arg, ifr_len);

	return (error);
}