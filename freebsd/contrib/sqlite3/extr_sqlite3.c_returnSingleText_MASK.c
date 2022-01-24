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
typedef  int /*<<< orphan*/  Vdbe ;

/* Variables and functions */
 int /*<<< orphan*/  OP_ResultRow ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,char const*) ; 

__attribute__((used)) static void FUNC2(
  Vdbe *v,                /* Prepared statement under construction */
  const char *zValue      /* Value to be returned */
){
  if( zValue ){
    FUNC1(v, 1, (const char*)zValue);
    FUNC0(v, OP_ResultRow, 1, 1);
  }
}