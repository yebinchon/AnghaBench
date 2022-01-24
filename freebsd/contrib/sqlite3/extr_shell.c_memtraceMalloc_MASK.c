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
struct TYPE_2__ {int (* xRoundup ) (int) ;void* (* xMalloc ) (int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,char*,int) ; 
 TYPE_1__ memtraceBase ; 
 scalar_t__ memtraceOut ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 void* FUNC3 (int) ; 

__attribute__((used)) static void *FUNC4(int n){
  if( memtraceOut ){
    FUNC0(memtraceOut, "MEMTRACE: allocate %d bytes\n", 
            memtraceBase.xRoundup(n));
  }
  return memtraceBase.xMalloc(n);
}