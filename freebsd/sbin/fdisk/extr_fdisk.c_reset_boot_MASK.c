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
struct dos_partition {int dummy; } ;
struct TYPE_2__ {struct dos_partition* parts; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dos_partition*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__ mboot ; 

__attribute__((used)) static void
FUNC2(void)
{
    int				i;
    struct dos_partition	*partp;

    FUNC1();
    for (i = 0; i < 4; ++i) {
	partp = &mboot.parts[i];
	FUNC0(partp, sizeof(*partp));
    }
}