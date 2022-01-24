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
 int FUNC0 (char*) ; 
 scalar_t__ FUNC1 (unsigned char) ; 
 scalar_t__ FUNC2 (char*,char*) ; 

__attribute__((used)) static __inline  int
FUNC3(char *w)
{
     if(FUNC1((unsigned char)*w))
	  return FUNC2(w, "TRUE") == 0;
     else
	  return FUNC0(w);
}