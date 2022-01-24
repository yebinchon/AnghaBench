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
typedef  scalar_t__ uint32_t ;
typedef  void* caddr_t ;
struct TYPE_3__ {void* ifr_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  GREBITS ; 
 int /*<<< orphan*/  GREGKEY ; 
 int /*<<< orphan*/  GREGOPTS ; 
 int /*<<< orphan*/  GREGPORT ; 
 TYPE_1__ ifr ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC3 (char) ; 

__attribute__((used)) static void
FUNC4(int s)
{
	uint32_t opts, port;

	opts = 0;
	ifr.ifr_data = (caddr_t)&opts;
	if (FUNC0(s, GREGKEY, &ifr) == 0)
		if (opts != 0)
			FUNC2("\tgrekey: 0x%x (%u)\n", opts, opts);
	opts = 0;
	if (FUNC0(s, GREGOPTS, &ifr) != 0 || opts == 0)
		return;

	port = 0;
	ifr.ifr_data = (caddr_t)&port;
	if (FUNC0(s, GREGPORT, &ifr) == 0 && port != 0)
		FUNC2("\tudpport: %u\n", port);
	FUNC1("\toptions", opts, GREBITS);
	FUNC3('\n');
}