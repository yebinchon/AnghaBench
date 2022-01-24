#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct timeval {void* tv_sec; scalar_t__ tv_usec; } ;
struct timespec {void* tv_sec; scalar_t__ tv_nsec; } ;
struct stat {int st_mode; } ;
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  scalar_t__ sqlite3_int64 ;
typedef  int /*<<< orphan*/  sqlite3_context ;
typedef  int mode_t ;
struct TYPE_5__ {int dwHighDateTime; scalar_t__ dwLowDateTime; } ;
typedef  int /*<<< orphan*/  SYSTEMTIME ;
typedef  scalar_t__ LPWSTR ;
typedef  int LONGLONG ;
typedef  scalar_t__ HANDLE ;
typedef  TYPE_1__ FILETIME ;
typedef  int /*<<< orphan*/  FILE ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  AT_FDCWD ; 
 int /*<<< orphan*/  AT_SYMLINK_NOFOLLOW ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ EEXIST ; 
 int /*<<< orphan*/  FILE_FLAG_BACKUP_SEMANTICS ; 
 int /*<<< orphan*/  FILE_WRITE_ATTRIBUTES ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC8 (char const*,int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (char const*,struct stat*) ; 
 int /*<<< orphan*/ * FUNC11 (char const*,char*) ; 
 scalar_t__ FUNC12 (char const*,int,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (char const*,int) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (char const*,char const*) ; 
 void* FUNC20 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ,char const*,struct timespec*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (char const*,struct timeval*) ; 

__attribute__((used)) static int FUNC23(
  sqlite3_context *pCtx,          /* Context to return bytes written in */
  const char *zFile,              /* File to write */
  sqlite3_value *pData,           /* Data to write */
  mode_t mode,                    /* MODE parameter passed to writefile() */
  sqlite3_int64 mtime             /* MTIME parameter (or -1 to not set time) */
){
#if !defined(_WIN32) && !defined(WIN32)
  if( FUNC5(mode) ){
    const char *zTo = (const char*)FUNC18(pData);
    if( FUNC19(zTo, zFile)<0 ) return 1;
  }else
#endif
  {
    if( FUNC4(mode) ){
      if( FUNC13(zFile, mode) ){
        /* The mkdir() call to create the directory failed. This might not
        ** be an error though - if there is already a directory at the same
        ** path and either the permissions already match or can be changed
        ** to do so using chmod(), it is not an error.  */
        struct stat sStat;
        if( errno!=EEXIST
         || 0!=FUNC10(zFile, &sStat)
         || !FUNC4(sStat.st_mode)
         || ((sStat.st_mode&0777)!=(mode&0777) && 0!=FUNC8(zFile, mode&0777))
        ){
          return 1;
        }
      }
    }else{
      sqlite3_int64 nWrite = 0;
      const char *z;
      int rc = 0;
      FILE *out = FUNC11(zFile, "wb");
      if( out==0 ) return 1;
      z = (const char*)FUNC16(pData);
      if( z ){
        sqlite3_int64 n = FUNC12(z, 1, FUNC17(pData), out);
        nWrite = FUNC17(pData);
        if( nWrite!=n ){
          rc = 1;
        }
      }
      FUNC9(out);
      if( rc==0 && mode && FUNC8(zFile, mode & 0777) ){
        rc = 1;
      }
      if( rc ) return 2;
      FUNC15(pCtx, nWrite);
    }
  }

  if( mtime>=0 ){
#if defined(_WIN32)
    /* Windows */
    FILETIME lastAccess;
    FILETIME lastWrite;
    SYSTEMTIME currentTime;
    LONGLONG intervals;
    HANDLE hFile;
    LPWSTR zUnicodeName;
    extern LPWSTR sqlite3_win32_utf8_to_unicode(const char*);

    GetSystemTime(&currentTime);
    SystemTimeToFileTime(&currentTime, &lastAccess);
    intervals = Int32x32To64(mtime, 10000000) + 116444736000000000;
    lastWrite.dwLowDateTime = (DWORD)intervals;
    lastWrite.dwHighDateTime = intervals >> 32;
    zUnicodeName = sqlite3_win32_utf8_to_unicode(zFile);
    if( zUnicodeName==0 ){
      return 1;
    }
    hFile = CreateFileW(
      zUnicodeName, FILE_WRITE_ATTRIBUTES, 0, NULL, OPEN_EXISTING,
      FILE_FLAG_BACKUP_SEMANTICS, NULL
    );
    sqlite3_free(zUnicodeName);
    if( hFile!=INVALID_HANDLE_VALUE ){
      BOOL bResult = SetFileTime(hFile, NULL, &lastAccess, &lastWrite);
      CloseHandle(hFile);
      return !bResult;
    }else{
      return 1;
    }
#elif defined(AT_FDCWD) && 0 /* utimensat() is not universally available */
    /* Recent unix */
    struct timespec times[2];
    times[0].tv_nsec = times[1].tv_nsec = 0;
    times[0].tv_sec = time(0);
    times[1].tv_sec = mtime;
    if( utimensat(AT_FDCWD, zFile, times, AT_SYMLINK_NOFOLLOW) ){
      return 1;
    }
#else
    /* Legacy unix */
    struct timeval times[2];
    times[0].tv_usec = times[1].tv_usec = 0;
    times[0].tv_sec = FUNC20(0);
    times[1].tv_sec = mtime;
    if( FUNC22(zFile, times) ){
      return 1;
    }
#endif
  }

  return 0;
}