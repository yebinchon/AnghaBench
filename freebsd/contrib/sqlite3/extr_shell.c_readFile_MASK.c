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
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 size_t FUNC2 (char*,long,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 long FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (long) ; 

__attribute__((used)) static char *FUNC8(const char *zName, int *pnByte){
  FILE *in = FUNC1(zName, "rb");
  long nIn;
  size_t nRead;
  char *pBuf;
  if( in==0 ) return 0;
  FUNC3(in, 0, SEEK_END);
  nIn = FUNC4(in);
  FUNC5(in);
  pBuf = FUNC7( nIn+1 );
  if( pBuf==0 ){ FUNC0(in); return 0; }
  nRead = FUNC2(pBuf, nIn, 1, in);
  FUNC0(in);
  if( nRead!=1 ){
    FUNC6(pBuf);
    return 0;
  }
  pBuf[nIn] = 0;
  if( pnByte ) *pnByte = nIn;
  return pBuf;
}