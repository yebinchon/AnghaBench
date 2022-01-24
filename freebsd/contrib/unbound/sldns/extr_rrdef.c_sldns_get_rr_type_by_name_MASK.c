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
typedef  int sldns_rr_type ;
struct TYPE_3__ {char* _name; int _type; } ;
typedef  TYPE_1__ sldns_rr_descriptor ;

/* Variables and functions */
 scalar_t__ LDNS_RDATA_FIELD_DESCRIPTORS_COUNT ; 
 int FUNC0 (char const*) ; 
 TYPE_1__* rdata_field_descriptors ; 
 int FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*,char const*,int) ; 

sldns_rr_type
FUNC3(const char *name)
{
	unsigned int i;
	const char *desc_name;
	const sldns_rr_descriptor *desc;

	/* TYPEXX representation */
	if (FUNC1(name) > 4 && FUNC2(name, "TYPE", 4) == 0) {
		return FUNC0(name + 4);
	}

	/* Normal types */
	for (i = 0; i < (unsigned int) LDNS_RDATA_FIELD_DESCRIPTORS_COUNT; i++) {
		desc = &rdata_field_descriptors[i];
		desc_name = desc->_name;
		if(desc_name &&
		   FUNC1(name) == FUNC1(desc_name) &&
		   FUNC2(name, desc_name, FUNC1(desc_name)) == 0) {
			/* because not all array index equals type code */
			return desc->_type;
		}
	}

	/* special cases for query types */
	if (FUNC1(name) == 4 && FUNC2(name, "IXFR", 4) == 0) {
		return 251;
	} else if (FUNC1(name) == 4 && FUNC2(name, "AXFR", 4) == 0) {
		return 252;
	} else if (FUNC1(name) == 5 && FUNC2(name, "MAILB", 5) == 0) {
		return 253;
	} else if (FUNC1(name) == 5 && FUNC2(name, "MAILA", 5) == 0) {
		return 254;
	} else if (FUNC1(name) == 3 && FUNC2(name, "ANY", 3) == 0) {
		return 255;
	}

	return 0;
}