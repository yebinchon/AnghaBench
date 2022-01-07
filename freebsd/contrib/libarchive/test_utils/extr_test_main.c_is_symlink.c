
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef char wchar_t ;
struct stat {int st_mode; } ;
typedef size_t ssize_t ;
typedef int buff ;
struct TYPE_7__ {int dwFileAttributes; } ;
struct TYPE_5__ {size_t SubstituteNameLength; size_t SubstituteNameOffset; scalar_t__ PathBuffer; } ;
struct TYPE_6__ {scalar_t__ ReparseTag; TYPE_1__ SymbolicLinkReparseBuffer; } ;
typedef TYPE_2__ REPARSE_DATA_BUFFER ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;
typedef TYPE_3__ BY_HANDLE_FILE_INFORMATION ;
typedef char BYTE ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileA (char*,int ,int ,int *,int ,int const,int *) ;
 int DeviceIoControl (scalar_t__,int ,int *,int ,char*,int,int*,int *) ;
 int FILE_ATTRIBUTE_DIRECTORY ;
 int FILE_ATTRIBUTE_REPARSE_POINT ;
 int FILE_FLAG_BACKUP_SEMANTICS ;
 int FILE_FLAG_OPEN_REPARSE_POINT ;
 int FILE_SHARE_READ ;
 int FSCTL_GET_REPARSE_POINT ;
 int GetFileInformationByHandle (scalar_t__,TYPE_3__*) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 scalar_t__ IO_REPARSE_TAG_SYMLINK ;
 size_t MAXIMUM_REPARSE_DATA_BUFFER_SIZE ;
 int OPEN_EXISTING ;
 int S_ISLNK (int ) ;
 int assertion_count (char const*,int) ;
 int failure_finish (int *) ;
 int failure_start (char const*,int,char*,char const*) ;
 int free (char*) ;
 int lstat (char const*,struct stat*) ;
 char* malloc (size_t) ;
 size_t mbsrtowcs (char*,char const**,size_t,int *) ;
 int memcpy (char*,char*,size_t) ;
 size_t readlink (char const*,char*,int) ;
 scalar_t__ strcmp (char*,char const*) ;
 int strlen (char const*) ;
 scalar_t__ wcscmp (char*,char*) ;

__attribute__((used)) static int
is_symlink(const char *file, int line,
    const char *pathname, const char *contents, int isdir)
{
 char buff[300];
 struct stat st;
 ssize_t linklen;
 int r;

 (void)isdir;
 assertion_count(file, line);
 r = lstat(pathname, &st);
 if (r != 0) {
  failure_start(file, line,
      "Symlink should exist: %s", pathname);
  failure_finish(((void*)0));
  return (0);
 }
 if (!S_ISLNK(st.st_mode))
  return (0);
 if (contents == ((void*)0))
  return (1);
 linklen = readlink(pathname, buff, sizeof(buff));
 if (linklen < 0) {
  failure_start(file, line, "Can't read symlink %s", pathname);
  failure_finish(((void*)0));
  return (0);
 }
 buff[linklen] = '\0';
 if (strcmp(buff, contents) != 0)
  return (0);
 return (1);

}
