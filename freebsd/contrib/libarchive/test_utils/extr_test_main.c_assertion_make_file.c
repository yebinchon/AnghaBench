
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;
typedef int FILE ;


 int O_CREAT ;
 int O_WRONLY ;
 int assertion_count (char const*,int) ;
 int assertion_file_mode (char const*,int,char const*,int) ;
 scalar_t__ chmod (char const*,int) ;
 int close (int) ;
 int failure_finish (int *) ;
 int failure_start (char const*,int,char*,char const*) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 size_t fwrite (void const*,int,size_t,int *) ;
 int open (char const*,int,int) ;
 size_t strlen (void const*) ;
 scalar_t__ write (int,void const*,scalar_t__) ;

int
assertion_make_file(const char *file, int line,
    const char *path, int mode, int csize, const void *contents)
{
 int fd;
 assertion_count(file, line);
 fd = open(path, O_CREAT | O_WRONLY, mode >= 0 ? mode : 0644);
 if (fd < 0) {
  failure_start(file, line, "Could not create %s", path);
  failure_finish(((void*)0));
  return (0);
 }
 if (0 != chmod(path, mode)) {
  failure_start(file, line, "Could not chmod %s", path);
  failure_finish(((void*)0));
  close(fd);
  return (0);
 }
 if (contents != ((void*)0)) {
  ssize_t wsize;

  if (csize < 0)
   wsize = (ssize_t)strlen(contents);
  else
   wsize = (ssize_t)csize;
  if (wsize != write(fd, contents, wsize)) {
   close(fd);
   failure_start(file, line,
       "Could not write to %s", path);
   failure_finish(((void*)0));
   close(fd);
   return (0);
  }
 }
 close(fd);
 assertion_file_mode(file, line, path, mode);
 return (1);

}
