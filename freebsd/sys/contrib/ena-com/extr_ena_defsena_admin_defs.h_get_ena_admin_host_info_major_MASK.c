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
typedef  int uint32_t ;
struct ena_admin_host_info {int driver_version; } ;

/* Variables and functions */
 int ENA_ADMIN_HOST_INFO_MAJOR_MASK ; 

__attribute__((used)) static inline uint32_t FUNC0(const struct ena_admin_host_info *p)
{
	return p->driver_version & ENA_ADMIN_HOST_INFO_MAJOR_MASK;
}