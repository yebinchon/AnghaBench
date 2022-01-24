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
typedef  scalar_t__ sqlite3_uint64 ;
typedef  int /*<<< orphan*/  r ;
struct TYPE_4__ {scalar_t__ zTempFile; scalar_t__ db; } ;
typedef  TYPE_1__ ShellState ;

/* Variables and functions */
 int /*<<< orphan*/  SQLITE_FCNTL_TEMPFILENAME ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 void* FUNC5 (char*,scalar_t__,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC7(ShellState *p, const char *zSuffix){
  FUNC0(p);
  FUNC4(p->zTempFile);
  p->zTempFile = 0;
  if( p->db ){
    FUNC3(p->db, 0, SQLITE_FCNTL_TEMPFILENAME, &p->zTempFile);
  }
  if( p->zTempFile==0 ){
    sqlite3_uint64 r;
    FUNC6(sizeof(r), &r);
    p->zTempFile = FUNC5("temp%llx.%s", r, zSuffix);
  }else{
    p->zTempFile = FUNC5("%z.%s", p->zTempFile, zSuffix);
  }
  if( p->zTempFile==0 ){
    FUNC2(stderr, "out of memory\n");
    FUNC1(1);
  }
}