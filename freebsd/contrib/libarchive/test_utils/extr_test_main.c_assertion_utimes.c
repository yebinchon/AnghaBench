
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct timeval {long tv_sec; long tv_usec; } ;
struct TYPE_8__ {long tv_nsec; } ;
struct TYPE_7__ {long tv_nsec; } ;
struct stat {long st_mtime; long st_atime; TYPE_2__ st_atimespec; TYPE_1__ st_mtimespec; } ;
struct TYPE_9__ {int HighPart; int LowPart; void* QuadPart; } ;
typedef TYPE_3__ ULARGE_INTEGER ;
struct TYPE_10__ {int dwHighDateTime; int dwLowDateTime; } ;
typedef scalar_t__ HANDLE ;
typedef TYPE_4__ FILETIME ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileA (char const*,int,int,int *,int ,int ,int *) ;
 int FILE_FLAG_BACKUP_SEMANTICS ;
 int FILE_SHARE_READ ;
 int FILE_SHARE_WRITE ;
 int GENERIC_READ ;
 int GENERIC_WRITE ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int OPEN_EXISTING ;
 int SetFileTime (scalar_t__,int *,TYPE_4__*,TYPE_4__*) ;
 void* WINTIME (long,long) ;
 int assertion_count (char const*,int) ;
 int failure_finish (int *) ;
 int failure_start (char const*,int,char*,char const*) ;
 int lstat (char const*,struct stat*) ;
 int lutimes (char const*,struct timeval*) ;
 int utimes (char const*,struct timeval*) ;

int
assertion_utimes(const char *file, int line,
    const char *pathname, long at, long at_nsec, long mt, long mt_nsec)
{
 int r;
 struct stat st;
 struct timeval times[2];


 mt_nsec = at_nsec = 0;

 if (mt == 0 && mt_nsec == 0 && at == 0 && at_nsec == 0)
  return (1);

 r = lstat(pathname, &st);
 if (r < 0) {
  failure_start(file, line, "Can't stat %s\n", pathname);
  failure_finish(((void*)0));
  return (0);
 }

 if (mt == 0 && mt_nsec == 0) {
  mt = st.st_mtime;





 }
 if (at == 0 && at_nsec == 0) {
  at = st.st_atime;





 }

 times[1].tv_sec = mt;
 times[1].tv_usec = mt_nsec / 1000;

 times[0].tv_sec = at;
 times[0].tv_usec = at_nsec / 1000;




 r = utimes(pathname, times);

 if (r < 0) {
  failure_start(file, line, "Can't utimes %s\n", pathname);
  failure_finish(((void*)0));
  return (0);
 }
 return (1);

}
