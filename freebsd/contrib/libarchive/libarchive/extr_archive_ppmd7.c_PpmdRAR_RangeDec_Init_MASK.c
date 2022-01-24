#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int Bottom; } ;
typedef  TYPE_1__ CPpmd7z_RangeDec ;
typedef  int /*<<< orphan*/  Bool ;

/* Variables and functions */
 int /*<<< orphan*/  False ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  True ; 

__attribute__((used)) static Bool FUNC1(CPpmd7z_RangeDec *p)
{
  if (!FUNC0(p))
    return False;
  p->Bottom = 0x8000;
  return True;
}