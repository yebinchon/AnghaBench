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
struct TYPE_3__ {scalar_t__ txt_fd; scalar_t__ txt_zero_fd; } ;
typedef  TYPE_1__ tmap_info_t ;

/* Variables and functions */
 scalar_t__ AO_INVALID_FD ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 

__attribute__((used)) static void
FUNC1(tmap_info_t * mi)
{
    if (mi->txt_fd == AO_INVALID_FD)
        return;

    FUNC0(mi->txt_fd);
    mi->txt_fd = AO_INVALID_FD;

#if defined(HAVE_MMAP) && ! defined(MAP_ANONYMOUS)
    if (mi->txt_zero_fd == AO_INVALID_FD)
        return;

    close(mi->txt_zero_fd);
    mi->txt_zero_fd = AO_INVALID_FD;
#endif
}