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
 int FUNC0 (struct module_env*,int) ; 
 int FUNC1 (struct module_env*,int) ; 
 int FUNC2 (struct module_env*,int) ; 
 int FUNC3 (struct module_env*,int) ; 
 int FUNC4 (struct module_env*,int) ; 
 int FUNC5 (struct module_env*,int) ; 
 int FUNC6 (struct module_env*,int) ; 
 int FUNC7 (struct module_env*,int) ; 

int 
FUNC8(int (*fptr)(struct module_env* env, int id))
{
	if(fptr == &iter_init) return 1;
	else if(fptr == &val_init) return 1;
	else if(fptr == &dns64_init) return 1;
	else if(fptr == &respip_init) return 1;
#ifdef WITH_PYTHONMODULE
	else if(fptr == &pythonmod_init) return 1;
#endif
#ifdef USE_CACHEDB
	else if(fptr == &cachedb_init) return 1;
#endif
#ifdef USE_IPSECMOD
	else if(fptr == &ipsecmod_init) return 1;
#endif
#ifdef CLIENT_SUBNET
	else if(fptr == &subnetmod_init) return 1;
#endif
	return 0;
}