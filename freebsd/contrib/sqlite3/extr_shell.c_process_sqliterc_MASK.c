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
struct TYPE_4__ {int lineno; int /*<<< orphan*/ * in; } ;
typedef  TYPE_1__ ShellState ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ stdin_is_interactive ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char const*) ; 

__attribute__((used)) static void FUNC8(
  ShellState *p,                  /* Configuration data */
  const char *sqliterc_override   /* Name of config file. NULL to use default */
){
  char *home_dir = NULL;
  const char *sqliterc = sqliterc_override;
  char *zBuf = 0;
  FILE *inSaved = p->in;
  int savedLineno = p->lineno;

  if (sqliterc == NULL) {
    home_dir = FUNC1(0);
    if( home_dir==0 ){
      FUNC4(stderr, "-- warning: cannot find home directory;"
                      " cannot read ~/.sqliterc\n");
      return;
    }
    zBuf = FUNC6("%s/.sqliterc",home_dir);
    sqliterc = zBuf;
  }
  p->in = FUNC2(sqliterc,"rb");
  if( p->in ){
    if( stdin_is_interactive ){
      FUNC7(stderr,"-- Loading resources from %s\n",sqliterc);
    }
    FUNC3(p);
    FUNC0(p->in);
  }
  p->in = inSaved;
  p->lineno = savedLineno;
  FUNC5(zBuf);
}