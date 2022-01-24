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

/* Variables and functions */
 void FUNC0 (struct module_qstate*,int,int,struct outbound_entry*) ; 
 void FUNC1 (struct module_qstate*,int,int,struct outbound_entry*) ; 
 void FUNC2 (struct module_qstate*,int,int,struct outbound_entry*) ; 
 void FUNC3 (struct module_qstate*,int,int,struct outbound_entry*) ; 
 void FUNC4 (struct module_qstate*,int,int,struct outbound_entry*) ; 
 void FUNC5 (struct module_qstate*,int,int,struct outbound_entry*) ; 
 void FUNC6 (struct module_qstate*,int,int,struct outbound_entry*) ; 
 void FUNC7 (struct module_qstate*,int,int,struct outbound_entry*) ; 

int 
FUNC8(void (*fptr)(struct module_qstate* qstate,
        enum module_ev event, int id, struct outbound_entry* outbound))
{
	if(fptr == &iter_operate) return 1;
	else if(fptr == &val_operate) return 1;
	else if(fptr == &dns64_operate) return 1;
	else if(fptr == &respip_operate) return 1;
#ifdef WITH_PYTHONMODULE
	else if(fptr == &pythonmod_operate) return 1;
#endif
#ifdef USE_CACHEDB
	else if(fptr == &cachedb_operate) return 1;
#endif
#ifdef USE_IPSECMOD
	else if(fptr == &ipsecmod_operate) return 1;
#endif
#ifdef CLIENT_SUBNET
	else if(fptr == &subnetmod_operate) return 1;
#endif
	return 0;
}