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
typedef  enum localzone_type { ____Placeholder_localzone_type } localzone_type ;

/* Variables and functions */
 int local_zone_always_nxdomain ; 
 int local_zone_always_refuse ; 
 int local_zone_always_transparent ; 
 int local_zone_deny ; 
 int local_zone_inform ; 
 int local_zone_inform_deny ; 
 int local_zone_inform_redirect ; 
 int local_zone_nodefault ; 
 int local_zone_noview ; 
 int local_zone_redirect ; 
 int local_zone_refuse ; 
 int local_zone_static ; 
 int local_zone_transparent ; 
 int local_zone_typetransparent ; 
 scalar_t__ FUNC0 (char const*,char*) ; 

int FUNC1(const char* type, enum localzone_type* t)
{
	if(FUNC0(type, "deny") == 0)
		*t = local_zone_deny;
	else if(FUNC0(type, "refuse") == 0)
		*t = local_zone_refuse;
	else if(FUNC0(type, "static") == 0)
		*t = local_zone_static;
	else if(FUNC0(type, "transparent") == 0)
		*t = local_zone_transparent;
	else if(FUNC0(type, "typetransparent") == 0)
		*t = local_zone_typetransparent;
	else if(FUNC0(type, "redirect") == 0)
		*t = local_zone_redirect;
	else if(FUNC0(type, "inform") == 0)
		*t = local_zone_inform;
	else if(FUNC0(type, "inform_deny") == 0)
		*t = local_zone_inform_deny;
	else if(FUNC0(type, "inform_redirect") == 0)
		*t = local_zone_inform_redirect;
	else if(FUNC0(type, "always_transparent") == 0)
		*t = local_zone_always_transparent;
	else if(FUNC0(type, "always_refuse") == 0)
		*t = local_zone_always_refuse;
	else if(FUNC0(type, "always_nxdomain") == 0)
		*t = local_zone_always_nxdomain;
	else if(FUNC0(type, "noview") == 0)
		*t = local_zone_noview;
	else if(FUNC0(type, "nodefault") == 0)
		*t = local_zone_nodefault;
	else return 0;
	return 1;
}