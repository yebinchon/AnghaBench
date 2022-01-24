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
typedef  int /*<<< orphan*/  SHA3Context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int SQLITE_BLOB ; 
 int SQLITE_NULL ; 
 int /*<<< orphan*/  SQLITE_TRANSIENT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  SHA3Context cx;
  int eType = FUNC9(argv[0]);
  int nByte = FUNC6(argv[0]);
  int iSize;
  if( argc==1 ){
    iSize = 256;
  }else{
    iSize = FUNC7(argv[1]);
    if( iSize!=224 && iSize!=256 && iSize!=384 && iSize!=512 ){
      FUNC4(context, "SHA3 size should be one of: 224 256 "
                                    "384 512", -1);
      return;
    }
  }
  if( eType==SQLITE_NULL ) return;
  FUNC1(&cx, iSize);
  if( eType==SQLITE_BLOB ){
    FUNC2(&cx, FUNC5(argv[0]), nByte);
  }else{
    FUNC2(&cx, FUNC8(argv[0]), nByte);
  }
  FUNC3(context, FUNC0(&cx), iSize/8, SQLITE_TRANSIENT);
}