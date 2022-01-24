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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 char* FUNC3 (char const*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 

__attribute__((used)) static void FUNC5(FILE *out, const char *z){
  int i;
  char c;
  FUNC1(out, 1);
  for(i=0; (c = z[i])!=0 && c!='\'' && c!='\n' && c!='\r'; i++){}
  if( c==0 ){
    FUNC4(out,"'%s'",z);
  }else{
    const char *zNL = 0;
    const char *zCR = 0;
    int nNL = 0;
    int nCR = 0;
    char zBuf1[20], zBuf2[20];
    for(i=0; z[i]; i++){
      if( z[i]=='\n' ) nNL++;
      if( z[i]=='\r' ) nCR++;
    }
    if( nNL ){
      FUNC0(out, "replace(");
      zNL = FUNC3(z, "\\n", "\\012", zBuf1);
    }
    if( nCR ){
      FUNC0(out, "replace(");
      zCR = FUNC3(z, "\\r", "\\015", zBuf2);
    }
    FUNC0(out, "'");
    while( *z ){
      for(i=0; (c = z[i])!=0 && c!='\n' && c!='\r' && c!='\''; i++){}
      if( c=='\'' ) i++;
      if( i ){
        FUNC4(out, "%.*s", i, z);
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
      if( c=='\n' ){
        FUNC0(out, "%s", zNL);
        continue;
      }
      FUNC0(out, "%s", zCR);
    }
    FUNC0(out, "'");
    if( nCR ){
      FUNC0(out, ",'%s',char(13))", zCR);
    }
    if( nNL ){
      FUNC0(out, ",'%s',char(10))", zNL);
    }
  }
  FUNC2(out, 1);
}