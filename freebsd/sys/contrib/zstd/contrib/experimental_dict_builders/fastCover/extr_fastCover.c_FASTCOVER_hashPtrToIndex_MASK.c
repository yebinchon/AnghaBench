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
typedef  int U32 ;

/* Variables and functions */
 int FUNC0 (void const*,int) ; 
 int FUNC1 (void const*,int) ; 

__attribute__((used)) static size_t FUNC2(const void* p, U32 h, unsigned d) {
  if (d == 6) {
    return FUNC0(p, h) & ((1 << h) - 1);
  }
  return FUNC1(p, h) & ((1 << h) - 1);
}