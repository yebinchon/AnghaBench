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
struct get_neigh_handler {int /*<<< orphan*/  src; } ;
struct addrinfo {int /*<<< orphan*/  ai_addr; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ ENXIO ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (struct addrinfo*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct addrinfo**) ; 

int FUNC3(struct get_neigh_handler *neigh_handler)
{
	int oif = -ENODEV;
	struct addrinfo *src_info;
	int err;

	err = FUNC2(neigh_handler->src, &src_info);
	if (err) {
		if (!errno)
			errno = ENXIO;
		return oif;
	}

	oif = FUNC1(src_info->ai_addr);
	if (oif <= 0)
		goto free;

free:
	FUNC0(src_info);
	return oif;
}