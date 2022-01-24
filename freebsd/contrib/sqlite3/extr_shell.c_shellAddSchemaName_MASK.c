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
typedef  int /*<<< orphan*/  sqlite3 ;
typedef  int /*<<< orphan*/  aPrefix ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char FUNC2 (char const*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sqlite3_free ; 
 char* FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (char const*,char*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (char const*) ; 
 scalar_t__ FUNC11 (char const*,char const*,int) ; 

__attribute__((used)) static void FUNC12(
  sqlite3_context *pCtx,
  int nVal,
  sqlite3_value **apVal
){
  static const char *aPrefix[] = {
     "TABLE",
     "INDEX",
     "UNIQUE INDEX",
     "VIEW",
     "TRIGGER",
     "VIRTUAL TABLE"
  };
  int i = 0;
  const char *zIn = (const char*)FUNC9(apVal[0]);
  const char *zSchema = (const char*)FUNC9(apVal[1]);
  const char *zName = (const char*)FUNC9(apVal[2]);
  sqlite3 *db = FUNC4(pCtx);
  FUNC0(nVal);
  if( zIn!=0 && FUNC11(zIn, "CREATE ", 7)==0 ){
    for(i=0; i<(int)(sizeof(aPrefix)/sizeof(aPrefix[0])); i++){
      int n = FUNC10(aPrefix[i]);
      if( FUNC11(zIn+7, aPrefix[i], n)==0 && zIn[n+7]==' ' ){
        char *z = 0;
        char *zFake = 0;
        if( zSchema ){
          char cQuote = FUNC2(zSchema);
          if( cQuote && FUNC8(zSchema,"temp")!=0 ){
            z = FUNC5("%.*s \"%w\".%s", n+7, zIn, zSchema, zIn+n+8);
          }else{
            z = FUNC5("%.*s %s.%s", n+7, zIn, zSchema, zIn+n+8);
          }
        }
        if( zName
         && aPrefix[i][0]=='V'
         && (zFake = FUNC3(db, zSchema, zName))!=0
        ){
          if( z==0 ){
            z = FUNC5("%s\n/* %s */", zIn, zFake);
          }else{
            z = FUNC5("%z\n/* %s */", z, zFake);
          }
          FUNC1(zFake);
        }
        if( z ){
          FUNC6(pCtx, z, -1, sqlite3_free);
          return;
        }
      }
    }
  }
  FUNC7(pCtx, apVal[0]);
}