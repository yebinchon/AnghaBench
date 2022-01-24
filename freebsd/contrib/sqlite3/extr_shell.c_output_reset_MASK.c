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
struct TYPE_4__ {char* outfile; int /*<<< orphan*/  out; scalar_t__ doXdgOpen; int /*<<< orphan*/  zTempFile; } ;
typedef  TYPE_1__ ShellState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static void FUNC8(ShellState *p){
  if( p->outfile[0]=='|' ){
#ifndef SQLITE_OMIT_POPEN
    FUNC2(p->out);
#endif
  }else{
    FUNC1(p->out);
#ifndef SQLITE_NOHAVE_SYSTEM
    if( p->doXdgOpen ){
      const char *zXdgOpenCmd =
#if defined(_WIN32)
      "start";
#elif defined(__APPLE__)
      "open";
#else
      "xdg-open";
#endif
      char *zCmd;
      zCmd = FUNC4("%s %s", zXdgOpenCmd, p->zTempFile);
      if( FUNC6(zCmd) ){
        FUNC7(stderr, "Failed: [%s]\n", zCmd);
      }
      FUNC3(zCmd);
      FUNC0(p);
      p->doXdgOpen = 0;
      FUNC5(100);
    }
#endif /* !defined(SQLITE_NOHAVE_SYSTEM) */
  }
  p->outfile[0] = 0;
  p->out = stdout;
}