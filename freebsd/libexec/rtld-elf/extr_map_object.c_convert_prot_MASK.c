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
 int PF_R ; 
 int PF_W ; 
 int PF_X ; 
 int PROT_EXEC ; 
 int PROT_READ ; 
 int PROT_WRITE ; 

int
FUNC0(int elfflags)
{
    int prot = 0;
    if (elfflags & PF_R)
	prot |= PROT_READ;
    if (elfflags & PF_W)
	prot |= PROT_WRITE;
    if (elfflags & PF_X)
	prot |= PROT_EXEC;
    return prot;
}