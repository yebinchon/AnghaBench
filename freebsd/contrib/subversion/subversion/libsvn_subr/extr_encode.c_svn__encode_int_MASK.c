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
typedef  int apr_int64_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int APR_UINT64_MAX ; 
 unsigned char* FUNC1 (unsigned char*,int) ; 

unsigned char *
FUNC2(unsigned char *p, apr_int64_t val)
{
  apr_uint64_t value = val;
  value = value & FUNC0(0x8000000000000000)
        ? APR_UINT64_MAX - (2 * value)
        : 2 * value;

  return FUNC1(p, value);
}