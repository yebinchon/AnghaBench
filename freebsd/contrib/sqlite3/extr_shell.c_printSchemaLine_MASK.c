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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char const*,char const*) ; 

__attribute__((used)) static void FUNC2(FILE *out, const char *z, const char *zTail){
  if( z==0 ) return;
  if( zTail==0 ) return;
  if( FUNC0("CREATE TABLE ['\"]*", z)==0 ){
    FUNC1(out, "CREATE TABLE IF NOT EXISTS %s%s", z+13, zTail);
  }else{
    FUNC1(out, "%s%s", z, zTail);
  }
}