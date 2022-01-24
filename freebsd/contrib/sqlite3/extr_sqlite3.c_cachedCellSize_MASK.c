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
typedef  scalar_t__ u16 ;
struct TYPE_4__ {int nCell; scalar_t__* szCell; } ;
typedef  TYPE_1__ CellArray ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int) ; 

__attribute__((used)) static u16 FUNC2(CellArray *p, int N){
  FUNC0( N>=0 && N<p->nCell );
  if( p->szCell[N] ) return p->szCell[N];
  return FUNC1(p, N);
}