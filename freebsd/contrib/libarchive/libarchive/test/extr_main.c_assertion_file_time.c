
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int time_t ;
struct TYPE_11__ {long long tv_nsec; } ;
struct TYPE_10__ {long long tv_nsec; } ;
struct TYPE_9__ {long long tv_nsec; } ;
struct stat {long long st_atime; long long st_mtime; long long st_birthtime; TYPE_3__ st_mtimespec; TYPE_2__ st_birthtimespec; TYPE_1__ st_atimespec; } ;
struct TYPE_12__ {int QuadPart; scalar_t__ HighPart; scalar_t__ LowPart; } ;
typedef TYPE_4__ ULARGE_INTEGER ;
struct TYPE_13__ {scalar_t__ dwHighDateTime; scalar_t__ dwLowDateTime; } ;
typedef scalar_t__ HANDLE ;
typedef TYPE_5__ FILETIME ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFile (char const*,int ,int ,int *,int ,int ,int *) ;
 int EPOC_TIME ;
 int FILE_FLAG_BACKUP_SEMANTICS ;
 int FILE_READ_ATTRIBUTES ;
 int GetFileTime (scalar_t__,TYPE_5__*,TYPE_5__*,TYPE_5__*) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int OPEN_EXISTING ;
 int assertion_count (char const*,int) ;
 int exit (int) ;
 int failure_finish (int *) ;
 int failure_start (char const*,int,char*,char const*,...) ;
 int fprintf (int ,char*,char) ;
 int lstat (char const*,struct stat*) ;
 int stderr ;
 int time (int *) ;

__attribute__((used)) static int
assertion_file_time(const char *file, int line,
    const char *pathname, long t, long nsec, char type, int recent)
{
 long long filet, filet_nsec;
 int r;
 struct stat st;

 assertion_count(file, line);
 r = lstat(pathname, &st);
 if (r != 0) {
  failure_start(file, line, "Can't stat %s\n", pathname);
  failure_finish(((void*)0));
  return (0);
 }
 switch (type) {
 case 'a': filet = st.st_atime; break;
 case 'm': filet = st.st_mtime; break;
 case 'b': filet = 0; break;
 default: fprintf(stderr, "INTERNAL: Bad type %c for file time", type);
  exit(1);
 }
 filet_nsec = nsec = 0;
 if (type == 'b') return (1);





 if (recent) {

  time_t now = time(((void*)0));
  if (filet < now - 10 || filet > now + 1) {
   failure_start(file, line,
       "File %s has %ctime %lld, %lld seconds ago\n",
       pathname, type, filet, now - filet);
   failure_finish(((void*)0));
   return (0);
  }
 } else if (filet != t || filet_nsec != nsec) {
  failure_start(file, line,
      "File %s has %ctime %lld.%09lld, expected %lld.%09lld",
      pathname, type, filet, filet_nsec, t, nsec);
  failure_finish(((void*)0));
  return (0);
 }
 return (1);
}
