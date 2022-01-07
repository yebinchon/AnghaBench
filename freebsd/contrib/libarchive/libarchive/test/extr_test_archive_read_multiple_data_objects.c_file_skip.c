
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mydata {int filename; int fd; } ;
struct archive {int dummy; } ;
typedef scalar_t__ int64_t ;


 int SEEK_CUR ;
 int archive_set_error (struct archive*,int ,char*,int ) ;
 int errno ;
 scalar_t__ lseek (int ,int ,scalar_t__) ;

__attribute__((used)) static int64_t
file_skip(struct archive *a, void *data, int64_t request)
{
  struct mydata *mydata = (struct mydata *)data;
  int64_t result = lseek(mydata->fd, SEEK_CUR, request);
  if (result >= 0)
    return result;
  archive_set_error(a, errno, "Error seeking in '%s'", mydata->filename);
  return -1;
}
