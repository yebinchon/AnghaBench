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
struct addrinfo {int /*<<< orphan*/ * ai_canonname; scalar_t__ ai_addrlen; int /*<<< orphan*/  ai_addr; scalar_t__ ai_protocol; scalar_t__ ai_socktype; scalar_t__ ai_family; scalar_t__ ai_flags; } ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static nvlist_t *
FUNC4(const struct addrinfo *ai)
{
	nvlist_t *nvl;

	nvl = FUNC3(0);
	FUNC1(nvl, "ai_flags", (uint64_t)ai->ai_flags);
	FUNC1(nvl, "ai_family", (uint64_t)ai->ai_family);
	FUNC1(nvl, "ai_socktype", (uint64_t)ai->ai_socktype);
	FUNC1(nvl, "ai_protocol", (uint64_t)ai->ai_protocol);
	FUNC0(nvl, "ai_addr", ai->ai_addr, (size_t)ai->ai_addrlen);
	if (ai->ai_canonname != NULL)
		FUNC2(nvl, "ai_canonname", ai->ai_canonname);

	return (nvl);
}