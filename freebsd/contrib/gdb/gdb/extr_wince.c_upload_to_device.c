
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct stat {scalar_t__ st_mtime; } ;
typedef int buf ;
typedef int LPWSTR ;
typedef int * HANDLE ;
typedef int FILETIME ;
typedef char* DWORD ;


 int CeCloseHandle (int *) ;
 int CeCreateDirectory (int ,int *) ;
 int * CeCreateFile (int ,int,int ,int *,int ,int ,int *) ;
 int CeGetFileTime (int *,int *,int *,int *) ;
 char const* CeGetLastError () ;
 int CeWriteFile (int *,char*,char*,char**,int *) ;
 char* ERROR_ALREADY_EXISTS ;
 int FILE_ATTRIBUTE_NORMAL ;
 int GENERIC_READ ;
 int GENERIC_WRITE ;
 int * INVALID_HANDLE_VALUE ;
 int OPEN_ALWAYS ;
 int O_RDONLY ;
 int TRUE ;
 scalar_t__ UPLOAD_ALWAYS ;
 scalar_t__ UPLOAD_NEVER ;
 int close (int) ;
 char* ctime (scalar_t__*) ;
 int error (char*,char const*,...) ;
 scalar_t__ fstat (int,struct stat*) ;
 int getenv (char*) ;
 int openp (int ,int ,char*,int ,int ,int *) ;
 int printf (char*,char*,char*) ;
 int read (int,char*,int) ;
 scalar_t__ remote_directory ;
 int strcat (char*,char const*) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;
 char* strpbrk (char const*,char*) ;
 scalar_t__ to_time_t (int *) ;
 int towide (char const*,int *) ;
 scalar_t__ upload_when ;
 scalar_t__ xrealloc (char*,int) ;

char *
upload_to_device (const char *to, const char *from)
{
  HANDLE h;
  const char *dir = remote_directory ?: "\\gdb";
  int len;
  static char *remotefile = ((void*)0);
  LPWSTR wstr;
  char *p;
  DWORD err;
  const char *in_to = to;
  FILETIME crtime, actime, wrtime;
  time_t utime;
  struct stat st;
  int fd;


  while ((p = strpbrk (to, "/\\")) != ((void*)0))
    to = p + 1;

  if (!*to)
    error ("no filename found to upload - %s.", in_to);

  len = strlen (dir) + strlen (to) + 2;
  remotefile = (char *) xrealloc (remotefile, len);
  strcpy (remotefile, dir);
  strcat (remotefile, "\\");
  strcat (remotefile, to);

  if (upload_when == UPLOAD_NEVER)
    return remotefile;


  if ((fd = openp (getenv ("PATH"), TRUE, (char *) from, O_RDONLY, 0, ((void*)0))) < 0)
    error ("couldn't open %s", from);


  if (fstat (fd, &st))
    st.st_mtime = (time_t) - 1;


  wstr = towide (dir, ((void*)0));
  (void) CeCreateDirectory (wstr, ((void*)0));


  wstr = towide (remotefile, ((void*)0));
  h = CeCreateFile (wstr, GENERIC_READ | GENERIC_WRITE, 0, ((void*)0),
      OPEN_ALWAYS, FILE_ATTRIBUTE_NORMAL, ((void*)0));


  err = CeGetLastError ();
  if (h == ((void*)0) || h == INVALID_HANDLE_VALUE)
    error ("error opening file \"%s\".  Windows error %d.",
    remotefile, err);

  CeGetFileTime (h, &crtime, &actime, &wrtime);
  utime = to_time_t (&wrtime);
  if (upload_when == UPLOAD_ALWAYS ||
      err != ERROR_ALREADY_EXISTS ||
      !CeGetFileTime (h, &crtime, &actime, &wrtime) ||
      to_time_t (&wrtime) < st.st_mtime)
    {
      DWORD nbytes;
      char buf[4096];
      int n;


      while ((n = read (fd, buf, sizeof (buf))) > 0)
 if (!CeWriteFile (h, buf, (DWORD) n, &nbytes, ((void*)0)))
   error ("error writing to remote device - %d.",
   CeGetLastError ());
    }

  close (fd);
  if (!CeCloseHandle (h))
    error ("error closing remote file - %d.", CeGetLastError ());

  return remotefile;
}
