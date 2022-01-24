#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int (* xSize ) (void*) ;int (* xRoundup ) (int) ;void* (* xRealloc ) (void*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,char*,int,int) ; 
 TYPE_1__ memtraceBase ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* FUNC2 (int) ; 
 scalar_t__ memtraceOut ; 
 int FUNC3 (void*) ; 
 int FUNC4 (int) ; 
 int FUNC5 (void*) ; 
 int FUNC6 (int) ; 
 void* FUNC7 (void*,int) ; 

__attribute__((used)) static void *FUNC8(void *p, int n){
  if( p==0 ) return FUNC2(n);
  if( n==0 ){
    FUNC1(p);
    return 0;
  }
  if( memtraceOut ){
    FUNC0(memtraceOut, "MEMTRACE: resize %d -> %d bytes\n",
            memtraceBase.xSize(p), memtraceBase.xRoundup(n));
  }
  return memtraceBase.xRealloc(p, n);
}