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
typedef  int u8 ;
struct dh_group {int dummy; } ;

/* Variables and functions */
#define  EAP_EKE_DHGROUP_EKE_14 132 
#define  EAP_EKE_DHGROUP_EKE_15 131 
#define  EAP_EKE_DHGROUP_EKE_16 130 
#define  EAP_EKE_DHGROUP_EKE_2 129 
#define  EAP_EKE_DHGROUP_EKE_5 128 
 struct dh_group const* FUNC0 (int) ; 

__attribute__((used)) static const struct dh_group * FUNC1(u8 group)
{
	switch (group) {
	case EAP_EKE_DHGROUP_EKE_2:
		return FUNC0(2);
	case EAP_EKE_DHGROUP_EKE_5:
		return FUNC0(5);
	case EAP_EKE_DHGROUP_EKE_14:
		return FUNC0(14);
	case EAP_EKE_DHGROUP_EKE_15:
		return FUNC0(15);
	case EAP_EKE_DHGROUP_EKE_16:
		return FUNC0(16);
	}

	return NULL;
}