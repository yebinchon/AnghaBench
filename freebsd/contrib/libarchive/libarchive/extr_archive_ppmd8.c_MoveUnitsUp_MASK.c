#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__* FreeList; int /*<<< orphan*/ * UnitsStart; } ;
typedef  TYPE_1__ CPpmd8 ;
typedef  int /*<<< orphan*/  Byte ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,void*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,unsigned int) ; 
 scalar_t__ FUNC3 (void*) ; 
 void* FUNC4 (TYPE_1__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 (unsigned int) ; 

__attribute__((used)) static void *FUNC7(CPpmd8 *p, void *oldPtr, unsigned nu)
{
  unsigned indx = FUNC6(nu);
  void *ptr;
  if ((Byte *)oldPtr > p->UnitsStart + 16 * 1024 || FUNC3(oldPtr) > p->FreeList[indx])
    return oldPtr;
  ptr = FUNC4(p, indx);
  FUNC2(ptr, oldPtr, nu);
  if ((Byte*)oldPtr != p->UnitsStart)
    FUNC1(p, oldPtr, indx);
  else
    p->UnitsStart += FUNC5(FUNC0(indx));
  return ptr;
}