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
typedef  int i64 ;
struct TYPE_4__ {int journalOff; } ;
typedef  TYPE_1__ Pager ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static i64 FUNC2(Pager *pPager){
  i64 offset = 0;
  i64 c = pPager->journalOff;
  if( c ){
    offset = ((c-1)/FUNC0(pPager) + 1) * FUNC0(pPager);
  }
  FUNC1( offset%FUNC0(pPager)==0 );
  FUNC1( offset>=c );
  FUNC1( (offset-c)<FUNC0(pPager) );
  return offset;
}