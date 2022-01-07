
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct stat {scalar_t__ st_ino; } ;
typedef int int64_t ;
struct TYPE_3__ {int nFileIndexHigh; } ;
typedef TYPE_1__ BY_HANDLE_FILE_INFORMATION ;


 int my_GetFileInformationByName (char const*,TYPE_1__*) ;
 scalar_t__ stat (char const*,struct stat*) ;

int
is_LargeInode(const char *file)
{
 struct stat st;
 int64_t ino;

 if (stat(file, &st) < 0)
  return (0);
 ino = (int64_t)st.st_ino;
 return (ino > 0xffffffff);

}
