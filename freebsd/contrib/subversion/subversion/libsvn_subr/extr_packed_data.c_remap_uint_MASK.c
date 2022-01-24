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
typedef  int apr_uint64_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int APR_UINT64_MAX ; 

__attribute__((used)) static apr_uint64_t
FUNC1(apr_uint64_t value)
{
  return value & FUNC0(0x8000000000000000)
       ? APR_UINT64_MAX - (2 * value)
       : 2 * value;
}