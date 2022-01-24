#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__* FreeList; } ;
typedef  TYPE_1__ CPpmd8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,void*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,unsigned int) ; 
 void* FUNC2 (TYPE_1__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,void*,unsigned int,unsigned int) ; 
 unsigned int FUNC4 (unsigned int) ; 

__attribute__((used)) static void *FUNC5(CPpmd8 *p, void *oldPtr, unsigned oldNU, unsigned newNU)
{
  unsigned i0 = FUNC4(oldNU);
  unsigned i1 = FUNC4(newNU);
  if (i0 == i1)
    return oldPtr;
  if (p->FreeList[i1] != 0)
  {
    void *ptr = FUNC2(p, i1);
    FUNC1(ptr, oldPtr, newNU);
    FUNC0(p, oldPtr, i0);
    return ptr;
  }
  FUNC3(p, oldPtr, i0, i1);
  return oldPtr;
}