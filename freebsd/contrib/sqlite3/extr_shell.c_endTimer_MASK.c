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
struct rusage {int /*<<< orphan*/  ru_stime; int /*<<< orphan*/  ru_utime; } ;
typedef  double sqlite3_int64 ;
struct TYPE_2__ {int /*<<< orphan*/  ru_stime; int /*<<< orphan*/  ru_utime; } ;

/* Variables and functions */
 int /*<<< orphan*/  RUSAGE_SELF ; 
 scalar_t__ enableTimer ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct rusage*) ; 
 double iBegin ; 
 int /*<<< orphan*/  FUNC1 (char*,double,double,double) ; 
 TYPE_1__ sBegin ; 
 double FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 double FUNC3 () ; 

__attribute__((used)) static void FUNC4(void){
  if( enableTimer ){
    sqlite3_int64 iEnd = FUNC3();
    struct rusage sEnd;
    FUNC0(RUSAGE_SELF, &sEnd);
    FUNC1("Run Time: real %.3f user %f sys %f\n",
       (iEnd - iBegin)*0.001,
       FUNC2(&sBegin.ru_utime, &sEnd.ru_utime),
       FUNC2(&sBegin.ru_stime, &sEnd.ru_stime));
  }
}