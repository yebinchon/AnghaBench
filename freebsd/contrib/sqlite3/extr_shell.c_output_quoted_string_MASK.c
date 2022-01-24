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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 

__attribute__((used)) static void FUNC4(FILE *out, const char *z){
  int i;
  char c;
  FUNC1(out, 1);
  for(i=0; (c = z[i])!=0 && c!='\''; i++){}
  if( c==0 ){
    FUNC3(out,"'%s'",z);
  }else{
    FUNC0(out, "'");
    while( *z ){
      for(i=0; (c = z[i])!=0 && c!='\''; i++){}
      if( c=='\'' ) i++;
      if( i ){
        FUNC3(out, "%.*s", i, z);
        z += i;
      }
      if( c=='\'' ){
        FUNC0(out, "'");
        continue;
      }
      if( c==0 ){
        break;
      }
      z++;
    }
    FUNC0(out, "'");
  }
  FUNC2(out, 1);
}