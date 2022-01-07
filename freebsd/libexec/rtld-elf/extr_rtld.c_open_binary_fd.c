
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int binpath ;


 scalar_t__ ENOENT ;
 int O_CLOEXEC ;
 int O_RDONLY ;
 int O_VERIFY ;
 int PATH_MAX ;
 int _rtld_error (char*,...) ;
 scalar_t__ errno ;
 int free (char*) ;
 char* getenv (char*) ;
 int open (char const*,int) ;
 int rtld_die () ;
 int rtld_strerror (scalar_t__) ;
 int * strchr (char const*,char) ;
 char* strdup (char*) ;
 int strlcat (char*,char const*,int) ;
 int strlcpy (char*,char*,int) ;
 char* strsep (char**,char*) ;

__attribute__((used)) static int
open_binary_fd(const char *argv0, bool search_in_path)
{
 char *pathenv, *pe, binpath[PATH_MAX];
 int fd;

 if (search_in_path && strchr(argv0, '/') == ((void*)0)) {
  pathenv = getenv("PATH");
  if (pathenv == ((void*)0)) {
   _rtld_error("-p and no PATH environment variable");
   rtld_die();
  }
  pathenv = strdup(pathenv);
  if (pathenv == ((void*)0)) {
   _rtld_error("Cannot allocate memory");
   rtld_die();
  }
  fd = -1;
  errno = ENOENT;
  while ((pe = strsep(&pathenv, ":")) != ((void*)0)) {
   if (strlcpy(binpath, pe, sizeof(binpath)) >=
       sizeof(binpath))
    continue;
   if (binpath[0] != '\0' &&
       strlcat(binpath, "/", sizeof(binpath)) >=
       sizeof(binpath))
    continue;
   if (strlcat(binpath, argv0, sizeof(binpath)) >=
       sizeof(binpath))
    continue;
   fd = open(binpath, O_RDONLY | O_CLOEXEC | O_VERIFY);
   if (fd != -1 || errno != ENOENT)
    break;
  }
  free(pathenv);
 } else {
  fd = open(argv0, O_RDONLY | O_CLOEXEC | O_VERIFY);
 }

 if (fd == -1) {
  _rtld_error("Cannot open %s: %s", argv0, rtld_strerror(errno));
  rtld_die();
 }
 return (fd);
}
