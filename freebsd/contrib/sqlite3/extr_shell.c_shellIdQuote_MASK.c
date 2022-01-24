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
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  sqlite3_free ; 
 char* FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(
  sqlite3_context *context, 
  int argc, 
  sqlite3_value **argv
){
  const char *zName = (const char*)FUNC3(argv[0]);
  FUNC0(argc);
  if( zName ){
    char *z = FUNC1("\"%w\"", zName);
    FUNC2(context, z, -1, sqlite3_free);
  }
}