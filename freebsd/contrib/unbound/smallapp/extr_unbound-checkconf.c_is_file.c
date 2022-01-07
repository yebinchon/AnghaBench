
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 scalar_t__ EACCES ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ errno ;
 int perror (char const*) ;
 int printf (char*,char const*) ;
 scalar_t__ stat (char const*,struct stat*) ;

__attribute__((used)) static int
is_file(const char* fname)
{
 struct stat buf;
 if(stat(fname, &buf) < 0) {
  if(errno==EACCES) {
   printf("warning: no search permission for one of the directories in path: %s\n", fname);
   return 1;
  }
  perror(fname);
  return 0;
 }
 if(S_ISDIR(buf.st_mode)) {
  printf("%s is not a file\n", fname);
  return 0;
 }
 return 1;
}
