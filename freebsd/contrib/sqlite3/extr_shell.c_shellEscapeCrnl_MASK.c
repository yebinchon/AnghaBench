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
typedef  int i64 ;

/* Variables and functions */
 int /*<<< orphan*/  SQLITE_TRANSIENT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (char const*) ; 
 char* FUNC10 (char const*,char*,char*,char*) ; 

__attribute__((used)) static void FUNC11(
  sqlite3_context *context, 
  int argc, 
  sqlite3_value **argv
){
  const char *zText = (const char*)FUNC8(argv[0]);
  FUNC0(argc);
  if( zText[0]=='\'' ){
    int nText = FUNC7(argv[0]);
    int i;
    char zBuf1[20];
    char zBuf2[20];
    const char *zNL = 0;
    const char *zCR = 0;
    int nCR = 0;
    int nNL = 0;

    for(i=0; zText[i]; i++){
      if( zNL==0 && zText[i]=='\n' ){
        zNL = FUNC10(zText, "\\n", "\\012", zBuf1);
        nNL = (int)FUNC9(zNL);
      }
      if( zCR==0 && zText[i]=='\r' ){
        zCR = FUNC10(zText, "\\r", "\\015", zBuf2);
        nCR = (int)FUNC9(zCR);
      }
    }

    if( zNL || zCR ){
      int iOut = 0;
      i64 nMax = (nNL > nCR) ? nNL : nCR;
      i64 nAlloc = nMax * nText + (nMax+64)*2;
      char *zOut = (char*)FUNC3(nAlloc);
      if( zOut==0 ){
        FUNC4(context);
        return;
      }

      if( zNL && zCR ){
        FUNC1(&zOut[iOut], "replace(replace(", 16);
        iOut += 16;
      }else{
        FUNC1(&zOut[iOut], "replace(", 8);
        iOut += 8;
      }
      for(i=0; zText[i]; i++){
        if( zText[i]=='\n' ){
          FUNC1(&zOut[iOut], zNL, nNL);
          iOut += nNL;
        }else if( zText[i]=='\r' ){
          FUNC1(&zOut[iOut], zCR, nCR);
          iOut += nCR;
        }else{
          zOut[iOut] = zText[i];
          iOut++;
        }
      }

      if( zNL ){
        FUNC1(&zOut[iOut], ",'", 2); iOut += 2;
        FUNC1(&zOut[iOut], zNL, nNL); iOut += nNL;
        FUNC1(&zOut[iOut], "', char(10))", 12); iOut += 12;
      }
      if( zCR ){
        FUNC1(&zOut[iOut], ",'", 2); iOut += 2;
        FUNC1(&zOut[iOut], zCR, nCR); iOut += nCR;
        FUNC1(&zOut[iOut], "', char(13))", 12); iOut += 12;
      }

      FUNC5(context, zOut, iOut, SQLITE_TRANSIENT);
      FUNC2(zOut);
      return;
    }
  }

  FUNC6(context, argv[0]);
}