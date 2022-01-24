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
struct TYPE_4__ {int /*<<< orphan*/ * v; } ;
typedef  TYPE_1__ fe25519 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

int FUNC2(const fe25519 *x)
{
  int i;
  int r;
  fe25519 t = *x;
  FUNC1(&t);
  r = FUNC0(t.v[0],0);
  for(i=1;i<32;i++) 
    r &= FUNC0(t.v[i],0);
  return r;
}