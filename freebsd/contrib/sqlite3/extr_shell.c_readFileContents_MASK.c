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
typedef  int sqlite3_int64 ;
typedef  int /*<<< orphan*/  sqlite3_context ;
typedef  int /*<<< orphan*/  sqlite3 ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SQLITE_IOERR ; 
 int /*<<< orphan*/  SQLITE_LIMIT_LENGTH ; 
 int /*<<< orphan*/  SQLITE_TOOBIG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 scalar_t__ FUNC2 (void*,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 void* FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,void*,int,int /*<<< orphan*/  (*) (void*)) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC13(sqlite3_context *ctx, const char *zName){
  FILE *in;
  sqlite3_int64 nIn;
  void *pBuf;
  sqlite3 *db;
  int mxBlob;

  in = FUNC1(zName, "rb");
  if( in==0 ){
    /* File does not exist or is unreadable. Leave the result set to NULL. */
    return;
  }
  FUNC3(in, 0, SEEK_END);
  nIn = FUNC4(in);
  FUNC5(in);
  db = FUNC6(ctx);
  mxBlob = FUNC8(db, SQLITE_LIMIT_LENGTH, -1);
  if( nIn>mxBlob ){
    FUNC11(ctx, SQLITE_TOOBIG);
    FUNC0(in);
    return;
  }
  pBuf = FUNC9( nIn ? nIn : 1 );
  if( pBuf==0 ){
    FUNC12(ctx);
    FUNC0(in);
    return;
  }
  if( nIn==(sqlite3_int64)FUNC2(pBuf, 1, (size_t)nIn, in) ){
    FUNC10(ctx, pBuf, nIn, sqlite3_free);
  }else{
    FUNC11(ctx, SQLITE_IOERR);
    FUNC7(pBuf);
  }
  FUNC0(in);
}