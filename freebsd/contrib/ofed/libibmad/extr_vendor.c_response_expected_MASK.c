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
 int IB_MAD_METHOD_GET ; 
 int IB_MAD_METHOD_SET ; 
 int IB_MAD_METHOD_TRAP ; 

__attribute__((used)) static inline int FUNC0(int method)
{
	return method == IB_MAD_METHOD_GET ||
	    method == IB_MAD_METHOD_SET || method == IB_MAD_METHOD_TRAP;
}