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
typedef  int sqlite3_int64 ;
typedef  int /*<<< orphan*/  sqlite3_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(
  sqlite3_context *context, 
  int argc, 
  sqlite3_value **argv
){
  const unsigned char *pBlob;
  int nBlob;
  int iInt;

  FUNC0(argc);
  nBlob = FUNC3(argv[0]);
  pBlob = (const unsigned char*)FUNC2(argv[0]);
  iInt = FUNC4(argv[1]);

  if( iInt>=0 && (iInt+1)*4<=nBlob ){
    const unsigned char *a = &pBlob[iInt*4];
    sqlite3_int64 iVal = ((sqlite3_int64)a[0]<<24)
                       + ((sqlite3_int64)a[1]<<16)
                       + ((sqlite3_int64)a[2]<< 8)
                       + ((sqlite3_int64)a[3]<< 0);
    FUNC1(context, iVal);
  }
}