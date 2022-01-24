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
typedef  scalar_t__ mode_t ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 scalar_t__ SQLITE_OK ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char const*) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,scalar_t__,int) ; 

__attribute__((used)) static void FUNC9(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  const char *zFile;
  mode_t mode = 0;
  int res;
  sqlite3_int64 mtime = -1;

  if( argc<2 || argc>4 ){
    FUNC4(context, 
        "wrong number of arguments to function writefile()", -1
    );
    return;
  }

  zFile = (const char*)FUNC7(argv[0]);
  if( zFile==0 ) return;
  if( argc>=3 ){
    mode = (mode_t)FUNC5(argv[2]);
  }
  if( argc==4 ){
    mtime = FUNC6(argv[3]);
  }

  res = FUNC8(context, zFile, argv[1], mode, mtime);
  if( res==1 && errno==ENOENT ){
    if( FUNC3(zFile)==SQLITE_OK ){
      res = FUNC8(context, zFile, argv[1], mode, mtime);
    }
  }

  if( argc>2 && res!=0 ){
    if( FUNC1(mode) ){
      FUNC2(context, "failed to create symlink: %s", zFile);
    }else if( FUNC0(mode) ){
      FUNC2(context, "failed to create directory: %s", zFile);
    }else{
      FUNC2(context, "failed to write file: %s", zFile);
    }
  }
}