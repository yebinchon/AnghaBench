
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; int st_mode; } ;
struct _stati64 {int st_mode; } ;
struct __stat64 {int st_mode; } ;
typedef int U64 ;


 int S_IFREG ;
 int S_ISREG (int ) ;
 int UTIL_FILESIZE_UNKNOWN ;
 int UTIL_isRegularFile (char const*) ;
 int _stat64 (char const*,struct __stat64*) ;
 int _stati64 (char const*,struct _stati64*) ;
 int stat (char const*,struct stat*) ;

U64 UTIL_getFileSize(const char* infilename)
{
    if (!UTIL_isRegularFile(infilename)) return UTIL_FILESIZE_UNKNOWN;
    { int r;
        struct stat statbuf;
        r = stat(infilename, &statbuf);
        if (r || !S_ISREG(statbuf.st_mode)) return UTIL_FILESIZE_UNKNOWN;

        return (U64)statbuf.st_size;
    }
}
