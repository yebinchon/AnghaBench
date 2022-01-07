
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mydata {int fd; } ;
struct archive {int dummy; } ;
typedef scalar_t__ int64_t ;


 scalar_t__ ARCHIVE_FATAL ;
 scalar_t__ lseek (int ,scalar_t__,int) ;

__attribute__((used)) static int64_t
file_seek(struct archive *a, void *data, int64_t request, int whence)
{
  struct mydata *mine = (struct mydata *)data;
  int64_t r;

  (void)a;
  r = lseek(mine->fd, request, whence);
  if (r >= 0)
    return r;
  return (ARCHIVE_FATAL);
}
