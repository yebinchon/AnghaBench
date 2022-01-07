
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int w; int m; } ;
struct read_file_data {scalar_t__ filename_type; TYPE_1__ filename; scalar_t__ use_lseek; int fd; } ;
struct archive {int dummy; } ;
typedef int off_t ;
typedef int int64_t ;


 scalar_t__ ESPIPE ;
 scalar_t__ FNT_MBS ;
 scalar_t__ FNT_STDIN ;
 int SEEK_CUR ;
 int archive_set_error (struct archive*,scalar_t__,char*,...) ;
 scalar_t__ errno ;
 int lseek (int ,int,int ) ;

__attribute__((used)) static int64_t
file_skip_lseek(struct archive *a, void *client_data, int64_t request)
{
 struct read_file_data *mine = (struct read_file_data *)client_data;




 off_t old_offset, new_offset;
 if ((old_offset = lseek(mine->fd, 0, SEEK_CUR)) >= 0 &&
     (new_offset = lseek(mine->fd, request, SEEK_CUR)) >= 0)
  return (new_offset - old_offset);


 mine->use_lseek = 0;


 if (errno == ESPIPE)
  return (0);


 if (mine->filename_type == FNT_STDIN)
  archive_set_error(a, errno, "Error seeking in stdin");
 else if (mine->filename_type == FNT_MBS)
  archive_set_error(a, errno, "Error seeking in '%s'",
      mine->filename.m);
 else
  archive_set_error(a, errno, "Error seeking in '%S'",
      mine->filename.w);
 return (-1);
}
