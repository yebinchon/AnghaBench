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
 void* envinit ; 
 void* environ ; 
 char* FUNC0 (char*) ; 

void
FUNC1(void)
{
    char **envp;

    envp = envinit;
    if ((*envp = FUNC0("TZ")))
	*envp++ -= 3;
#if defined(_CRAY) || defined(__hpux)
    else
	*envp++ = "TZ=GMT0";
#endif
    *envp = 0;
    environ = envinit;
}