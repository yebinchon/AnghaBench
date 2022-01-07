
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef scalar_t__ isc_result_t ;
typedef int FILE ;


 scalar_t__ ISC_R_FILENOTFOUND ;
 scalar_t__ ISC_R_INVALIDFILE ;
 scalar_t__ ISC_R_SUCCESS ;
 int O_CREAT ;
 int O_EXCL ;
 int O_TRUNC ;
 int O_WRONLY ;
 int REQUIRE (int) ;
 int S_IFREG ;
 int S_IRUSR ;
 int S_IWUSR ;
 int close (int) ;
 int errno ;
 int * fdopen (int,char*) ;
 scalar_t__ file_stats (char const*,struct stat*) ;
 scalar_t__ isc__errno2result (int ) ;
 int open (char const*,int,int) ;

isc_result_t
isc_file_safecreate(const char *filename, FILE **fp) {
 isc_result_t result;
 int flags;
 struct stat sb;
 FILE *f;
 int fd;

 REQUIRE(filename != ((void*)0));
 REQUIRE(fp != ((void*)0) && *fp == ((void*)0));

 result = file_stats(filename, &sb);
 if (result == ISC_R_SUCCESS) {
  if ((sb.st_mode & S_IFREG) == 0)
   return (ISC_R_INVALIDFILE);
  flags = O_WRONLY | O_TRUNC;
 } else if (result == ISC_R_FILENOTFOUND) {
  flags = O_WRONLY | O_CREAT | O_EXCL;
 } else
  return (result);

 fd = open(filename, flags, S_IRUSR | S_IWUSR);
 if (fd == -1)
  return (isc__errno2result(errno));

 f = fdopen(fd, "w");
 if (f == ((void*)0)) {
  result = isc__errno2result(errno);
  close(fd);
  return (result);
 }

 *fp = f;
 return (ISC_R_SUCCESS);
}
