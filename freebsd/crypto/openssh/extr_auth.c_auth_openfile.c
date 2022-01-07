
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
struct passwd {int pw_name; } ;
typedef int line ;
typedef int FILE ;


 scalar_t__ ENOENT ;
 int O_NONBLOCK ;
 int O_RDONLY ;
 int S_ISREG (int ) ;
 int auth_debug_add (char*,char*,char*) ;
 int close (int) ;
 int debug (char*,char*,char const*,int ) ;
 scalar_t__ errno ;
 int fclose (int *) ;
 int * fdopen (int,char*) ;
 int fileno (int *) ;
 scalar_t__ fstat (int,struct stat*) ;
 int logit (char*,char*,...) ;
 int open (char const*,int) ;
 scalar_t__ safe_path_fd (int ,char const*,struct passwd*,char*,int) ;
 int strerror (scalar_t__) ;
 int unset_nonblock (int) ;

__attribute__((used)) static FILE *
auth_openfile(const char *file, struct passwd *pw, int strict_modes,
    int log_missing, char *file_type)
{
 char line[1024];
 struct stat st;
 int fd;
 FILE *f;

 if ((fd = open(file, O_RDONLY|O_NONBLOCK)) == -1) {
  if (log_missing || errno != ENOENT)
   debug("Could not open %s '%s': %s", file_type, file,
      strerror(errno));
  return ((void*)0);
 }

 if (fstat(fd, &st) < 0) {
  close(fd);
  return ((void*)0);
 }
 if (!S_ISREG(st.st_mode)) {
  logit("User %s %s %s is not a regular file",
      pw->pw_name, file_type, file);
  close(fd);
  return ((void*)0);
 }
 unset_nonblock(fd);
 if ((f = fdopen(fd, "r")) == ((void*)0)) {
  close(fd);
  return ((void*)0);
 }
 if (strict_modes &&
     safe_path_fd(fileno(f), file, pw, line, sizeof(line)) != 0) {
  fclose(f);
  logit("Authentication refused: %s", line);
  auth_debug_add("Ignored %s: %s", file_type, line);
  return ((void*)0);
 }

 return f;
}
