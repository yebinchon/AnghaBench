
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct stat {int st_size; } ;
typedef int int64_t ;
struct TYPE_3__ {int nFileSizeLow; scalar_t__ nFileSizeHigh; } ;
typedef TYPE_1__ BY_HANDLE_FILE_INFORMATION ;


 int assertion_count (char const*,int) ;
 int failure_finish (int *) ;
 int failure_start (char const*,int,char*,char const*,long,long) ;
 int lstat (char const*,struct stat*) ;
 int my_GetFileInformationByName (char const*,TYPE_1__*) ;

int
assertion_file_size(const char *file, int line, const char *pathname, long size)
{
 int64_t filesize;
 int r;

 assertion_count(file, line);







 {
  struct stat st;
  r = lstat(pathname, &st);
  filesize = st.st_size;
 }

 if (r == 0 && filesize == size)
   return (1);
 failure_start(file, line, "File %s has size %ld, expected %ld",
     pathname, (long)filesize, (long)size);
 failure_finish(((void*)0));
 return (0);
}
