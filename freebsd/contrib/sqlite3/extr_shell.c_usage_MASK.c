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

/* Variables and functions */
 int /*<<< orphan*/  Argv0 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  zOptions ; 

__attribute__((used)) static void FUNC3(int showDetail){
  FUNC2(stderr,
      "Usage: %s [OPTIONS] FILENAME [SQL]\n"
      "FILENAME is the name of an SQLite database. A new database is created\n"
      "if the file does not previously exist.\n", Argv0);
  if( showDetail ){
    FUNC2(stderr, "OPTIONS include:\n%s", zOptions);
  }else{
    FUNC1(stderr, "Use the -help option for additional information\n");
  }
  FUNC0(1);
}