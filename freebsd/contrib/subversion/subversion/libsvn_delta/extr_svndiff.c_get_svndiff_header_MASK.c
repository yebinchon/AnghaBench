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
 char const* SVNDIFF_V0 ; 
 char const* SVNDIFF_V1 ; 
 char const* SVNDIFF_V2 ; 

__attribute__((used)) static const char *
FUNC0(int version)
{
  if (version == 2)
    return SVNDIFF_V2;
  else if (version == 1)
    return SVNDIFF_V1;
  else
    return SVNDIFF_V0;
}