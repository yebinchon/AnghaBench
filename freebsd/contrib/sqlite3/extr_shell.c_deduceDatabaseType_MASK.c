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
 int SHELL_OPEN_APPENDVFS ; 
 int SHELL_OPEN_NORMAL ; 
 int SHELL_OPEN_UNSPEC ; 
 int SHELL_OPEN_ZIPFILE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 size_t FUNC2 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char*,char*,int) ; 
 scalar_t__ FUNC5 (char*,char const*,int /*<<< orphan*/ ) ; 

int FUNC6(const char *zName, int dfltZip){
  FILE *f = FUNC1(zName, "rb");
  size_t n;
  int rc = SHELL_OPEN_UNSPEC;
  char zBuf[100];
  if( f==0 ){
    if( dfltZip && FUNC5("%.zip",zName,0)==0 ){
       return SHELL_OPEN_ZIPFILE;
    }else{
       return SHELL_OPEN_NORMAL;
    }
  }
  n = FUNC2(zBuf, 16, 1, f);
  if( n==1 && FUNC4(zBuf, "SQLite format 3", 16)==0 ){
    FUNC0(f);
    return SHELL_OPEN_NORMAL;
  }
  FUNC3(f, -25, SEEK_END);
  n = FUNC2(zBuf, 25, 1, f);
  if( n==1 && FUNC4(zBuf, "Start-Of-SQLite3-", 17)==0 ){
    rc = SHELL_OPEN_APPENDVFS;
  }else{
    FUNC3(f, -22, SEEK_END);
    n = FUNC2(zBuf, 22, 1, f);
    if( n==1 && zBuf[0]==0x50 && zBuf[1]==0x4b && zBuf[2]==0x05
       && zBuf[3]==0x06 ){
      rc = SHELL_OPEN_ZIPFILE;
    }else if( n==0 && dfltZip && FUNC5("%.zip",zName,0)==0 ){
      rc = SHELL_OPEN_ZIPFILE;
    }
  }
  FUNC0(f);
  return rc;  
}