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
struct stat {int /*<<< orphan*/  st_size; int /*<<< orphan*/  st_mode; } ;
struct _stati64 {int st_mode; } ;
struct __stat64 {int st_mode; } ;
typedef  int /*<<< orphan*/  U64 ;

/* Variables and functions */
 int S_IFREG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UTIL_FILESIZE_UNKNOWN ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int FUNC2 (char const*,struct __stat64*) ; 
 int FUNC3 (char const*,struct _stati64*) ; 
 int FUNC4 (char const*,struct stat*) ; 

U64 FUNC5(const char* infilename)
{
    if (!FUNC1(infilename)) return UTIL_FILESIZE_UNKNOWN;
    {   int r;
#if defined(_MSC_VER)
        struct __stat64 statbuf;
        r = _stat64(infilename, &statbuf);
        if (r || !(statbuf.st_mode & S_IFREG)) return UTIL_FILESIZE_UNKNOWN;
#elif defined(__MINGW32__) && defined (__MSVCRT__)
        struct _stati64 statbuf;
        r = _stati64(infilename, &statbuf);
        if (r || !(statbuf.st_mode & S_IFREG)) return UTIL_FILESIZE_UNKNOWN;
#else
        struct stat statbuf;
        r = FUNC4(infilename, &statbuf);
        if (r || !FUNC0(statbuf.st_mode)) return UTIL_FILESIZE_UNKNOWN;
#endif
        return (U64)statbuf.st_size;
    }
}