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
typedef  int /*<<< orphan*/  CPpmd8 ;
typedef  void Byte ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void*,unsigned int) ; 
 int FUNC2 (unsigned int) ; 
 unsigned int FUNC3 (unsigned int) ; 

__attribute__((used)) static void FUNC4(CPpmd8 *p, void *ptr, unsigned oldIndx, unsigned newIndx)
{
  unsigned i, nu = FUNC0(oldIndx) - FUNC0(newIndx);
  ptr = (Byte *)ptr + FUNC2(FUNC0(newIndx));
  if (FUNC0(i = FUNC3(nu)) != nu)
  {
    unsigned k = FUNC0(--i);
    FUNC1(p, ((Byte *)ptr) + FUNC2(k), nu - k - 1);
  }
  FUNC1(p, ptr, i);
}