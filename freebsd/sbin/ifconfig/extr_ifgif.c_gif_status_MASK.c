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
typedef  scalar_t__ caddr_t ;
struct TYPE_3__ {scalar_t__ ifr_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  GIFBITS ; 
 int /*<<< orphan*/  GIFGOPTS ; 
 TYPE_1__ ifr ; 
 int FUNC0 (int,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 

__attribute__((used)) static void
FUNC3(int s)
{
	int opts;

	ifr.ifr_data = (caddr_t)&opts;
	if (FUNC0(s, GIFGOPTS, &ifr) == -1)
		return;
	if (opts == 0)
		return;
	FUNC1("\toptions", opts, GIFBITS);
	FUNC2('\n');
}