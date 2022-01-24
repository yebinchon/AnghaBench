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
 void* FUNC0 (char*) ; 
 void* fork_support ; 
 char* FUNC1 (char*) ; 
 void* rq_size ; 
 void* sq_inline ; 
 void* sq_size ; 

__attribute__((used)) static void FUNC2(void)
{
	char *var;

	var = FUNC1("RS_SQ_SIZE");
	if (var)
		sq_size = FUNC0(var);

	var = FUNC1("RS_RQ_SIZE");
	if (var)
		rq_size = FUNC0(var);

	var = FUNC1("RS_INLINE");
	if (var)
		sq_inline = FUNC0(var);

	var = FUNC1("RDMAV_FORK_SAFE");
	if (var)
		fork_support = FUNC0(var);
}