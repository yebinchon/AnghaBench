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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
#define  UMAD_CLASS_CM 131 
#define  UMAD_CLASS_SUBN_ADM 130 
#define  UMAD_CLASS_SUBN_DIRECTED_ROUTE 129 
#define  UMAD_CLASS_SUBN_LID_ROUTED 128 
 char const* FUNC0 (int /*<<< orphan*/ ) ; 
 char const* FUNC1 (int /*<<< orphan*/ ) ; 
 char const* FUNC2 (int /*<<< orphan*/ ) ; 
 char const* FUNC3 (int /*<<< orphan*/ ) ; 

const char * FUNC4(uint8_t mgmt_class, __be16 attr_id)
{
	switch (mgmt_class) {
		case UMAD_CLASS_SUBN_LID_ROUTED:
		case UMAD_CLASS_SUBN_DIRECTED_ROUTE:
			return(FUNC3(attr_id));
		case UMAD_CLASS_SUBN_ADM:
			return(FUNC2(attr_id));
		case UMAD_CLASS_CM:
			return(FUNC0(attr_id));
	}

	return (FUNC1(attr_id));
}