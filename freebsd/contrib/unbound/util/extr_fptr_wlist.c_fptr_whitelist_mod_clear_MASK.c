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
 void FUNC0 (struct module_qstate*,int) ; 
 void FUNC1 (struct module_qstate*,int) ; 
 void FUNC2 (struct module_qstate*,int) ; 
 void FUNC3 (struct module_qstate*,int) ; 
 void FUNC4 (struct module_qstate*,int) ; 
 void FUNC5 (struct module_qstate*,int) ; 
 void FUNC6 (struct module_qstate*,int) ; 
 void FUNC7 (struct module_qstate*,int) ; 

int 
FUNC8(void (*fptr)(struct module_qstate* qstate,
        int id))
{
	if(fptr == &iter_clear) return 1;
	else if(fptr == &val_clear) return 1;
	else if(fptr == &dns64_clear) return 1;
	else if(fptr == &respip_clear) return 1;
#ifdef WITH_PYTHONMODULE
	else if(fptr == &pythonmod_clear) return 1;
#endif
#ifdef USE_CACHEDB
	else if(fptr == &cachedb_clear) return 1;
#endif
#ifdef USE_IPSECMOD
	else if(fptr == &ipsecmod_clear) return 1;
#endif
#ifdef CLIENT_SUBNET
	else if(fptr == &subnetmod_clear) return 1;
#endif
	return 0;
}