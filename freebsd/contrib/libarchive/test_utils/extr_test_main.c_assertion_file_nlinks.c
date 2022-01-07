
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct stat {scalar_t__ st_nlink; } ;
struct TYPE_3__ {scalar_t__ nNumberOfLinks; } ;
typedef scalar_t__ DWORD ;
typedef TYPE_1__ BY_HANDLE_FILE_INFORMATION ;


 int assertion_count (char const*,int) ;
 int failure_finish (int *) ;
 int failure_start (char const*,int,char*,char const*,scalar_t__,int) ;
 int lstat (char const*,struct stat*) ;
 int my_GetFileInformationByName (char const*,TYPE_1__*) ;

int
assertion_file_nlinks(const char *file, int line,
    const char *pathname, int nlinks)
{
 struct stat st;
 int r;

 assertion_count(file, line);
 r = lstat(pathname, &st);
 if (r == 0 && (int)st.st_nlink == nlinks)
  return (1);
 failure_start(file, line, "File %s has %d links, expected %d",
     pathname, st.st_nlink, nlinks);
 failure_finish(((void*)0));
 return (0);

}
