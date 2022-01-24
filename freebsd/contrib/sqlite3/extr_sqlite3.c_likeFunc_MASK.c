#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct compareInfo {int /*<<< orphan*/  matchSet; } ;
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_context ;
struct TYPE_3__ {int* aLimit; } ;
typedef  TYPE_1__ sqlite3 ;

/* Variables and functions */
 scalar_t__ SQLITE_BLOB ; 
 size_t SQLITE_LIMIT_LIKE_PATTERN_LENGTH ; 
 scalar_t__ SQLITE_MATCH ; 
 scalar_t__ FUNC0 (unsigned char const*,unsigned char const*,struct compareInfo*,int /*<<< orphan*/ ) ; 
 int FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char const**) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sqlite3_like_count ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 struct compareInfo* FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 unsigned char* FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

__attribute__((used)) static void FUNC11(
  sqlite3_context *context, 
  int argc, 
  sqlite3_value **argv
){
  const unsigned char *zA, *zB;
  u32 escape;
  int nPat;
  sqlite3 *db = FUNC3(context);
  struct compareInfo *pInfo = FUNC6(context);

#ifdef SQLITE_LIKE_DOESNT_MATCH_BLOBS
  if( sqlite3_value_type(argv[0])==SQLITE_BLOB
   || sqlite3_value_type(argv[1])==SQLITE_BLOB
  ){
#ifdef SQLITE_TEST
    sqlite3_like_count++;
#endif
    sqlite3_result_int(context, 0);
    return;
  }
#endif

  /* Limit the length of the LIKE or GLOB pattern to avoid problems
  ** of deep recursion and N*N behavior in patternCompare().
  */
  nPat = FUNC7(argv[0]);
  FUNC10( nPat==db->aLimit[SQLITE_LIMIT_LIKE_PATTERN_LENGTH] );
  FUNC10( nPat==db->aLimit[SQLITE_LIMIT_LIKE_PATTERN_LENGTH]+1 );
  if( nPat > db->aLimit[SQLITE_LIMIT_LIKE_PATTERN_LENGTH] ){
    FUNC4(context, "LIKE or GLOB pattern too complex", -1);
    return;
  }
  if( argc==3 ){
    /* The escape character string must consist of a single UTF-8 character.
    ** Otherwise, return an error.
    */
    const unsigned char *zEsc = FUNC8(argv[2]);
    if( zEsc==0 ) return;
    if( FUNC1((char*)zEsc, -1)!=1 ){
      FUNC4(context, 
          "ESCAPE expression must be a single character", -1);
      return;
    }
    escape = FUNC2(&zEsc);
  }else{
    escape = pInfo->matchSet;
  }
  zB = FUNC8(argv[0]);
  zA = FUNC8(argv[1]);
  if( zA && zB ){
#ifdef SQLITE_TEST
    sqlite3_like_count++;
#endif
    FUNC5(context,
                      FUNC0(zB, zA, pInfo, escape)==SQLITE_MATCH);
  }
}