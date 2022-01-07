
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct stat {scalar_t__ st_ino; scalar_t__ st_dev; } ;
struct TYPE_3__ {scalar_t__ dwVolumeSerialNumber; scalar_t__ nFileIndexHigh; scalar_t__ nFileIndexLow; } ;
typedef TYPE_1__ BY_HANDLE_FILE_INFORMATION ;


 int assertion_count (char const*,int) ;
 int failure_finish (int *) ;
 int failure_start (char const*,int,char*,char const*) ;
 int lstat (char const*,struct stat*) ;
 int my_GetFileInformationByName (char const*,TYPE_1__*) ;

__attribute__((used)) static int
is_hardlink(const char *file, int line,
    const char *path1, const char *path2)
{
 struct stat st1, st2;
 int r;

 assertion_count(file, line);
 r = lstat(path1, &st1);
 if (r != 0) {
  failure_start(file, line, "File should exist: %s", path1);
  failure_finish(((void*)0));
  return (0);
 }
 r = lstat(path2, &st2);
 if (r != 0) {
  failure_start(file, line, "File should exist: %s", path2);
  failure_finish(((void*)0));
  return (0);
 }
 return (st1.st_ino == st2.st_ino && st1.st_dev == st2.st_dev);

}
