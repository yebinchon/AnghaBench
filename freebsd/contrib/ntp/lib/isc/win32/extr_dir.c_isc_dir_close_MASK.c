#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ search_handle; } ;
typedef  TYPE_1__ isc_dir_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 

void
FUNC3(isc_dir_t *dir) {
       FUNC1(FUNC2(dir) && dir->search_handle != INVALID_HANDLE_VALUE);

       FUNC0(dir->search_handle);
       dir->search_handle = INVALID_HANDLE_VALUE;
}