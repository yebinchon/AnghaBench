#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int pExpert; } ;
struct TYPE_5__ {TYPE_1__ expert; } ;
typedef  TYPE_2__ ShellState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,char const*,char**) ; 

__attribute__((used)) static int FUNC2(
  ShellState *pState, 
  const char *zSql, 
  char **pzErr
){
  FUNC0( pState->expert.pExpert );
  FUNC0( pzErr==0 || *pzErr==0 );
  return FUNC1(pState->expert.pExpert, zSql, pzErr);
}