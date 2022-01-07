
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int w; int m; } ;
struct read_file_data {scalar_t__ filename_type; TYPE_1__ filename; int fd; } ;
struct archive {int dummy; } ;
typedef scalar_t__ int64_t ;


 scalar_t__ ARCHIVE_FATAL ;
 scalar_t__ FNT_MBS ;
 scalar_t__ FNT_STDIN ;
 int archive_set_error (struct archive*,int ,char*,...) ;
 int errno ;
 scalar_t__ lseek (int ,scalar_t__,int) ;

__attribute__((used)) static int64_t
file_seek(struct archive *a, void *client_data, int64_t request, int whence)
{
 struct read_file_data *mine = (struct read_file_data *)client_data;
 int64_t r;



 r = lseek(mine->fd, request, whence);
 if (r >= 0)
  return r;


 if (mine->filename_type == FNT_STDIN)
  archive_set_error(a, errno, "Error seeking in stdin");
 else if (mine->filename_type == FNT_MBS)
  archive_set_error(a, errno, "Error seeking in '%s'",
      mine->filename.m);
 else
  archive_set_error(a, errno, "Error seeking in '%S'",
      mine->filename.w);
 return (ARCHIVE_FATAL);
}
