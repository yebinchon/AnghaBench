
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct read_file_data {int fd; scalar_t__ filename_type; int * buffer; int block_size; int st_mode; } ;
struct archive {int dummy; } ;
typedef scalar_t__ ssize_t ;


 int ARCHIVE_OK ;
 scalar_t__ FNT_STDIN ;
 int S_ISBLK (int ) ;
 int S_ISCHR (int ) ;
 int S_ISREG (int ) ;
 int close (int) ;
 int free (int *) ;
 scalar_t__ read (int,int *,int ) ;

__attribute__((used)) static int
file_close2(struct archive *a, void *client_data)
{
 struct read_file_data *mine = (struct read_file_data *)client_data;

 (void)a;


 if (mine->fd >= 0) {
  if (!S_ISREG(mine->st_mode)
      && !S_ISCHR(mine->st_mode)
      && !S_ISBLK(mine->st_mode)) {
   ssize_t bytesRead;
   do {
    bytesRead = read(mine->fd, mine->buffer,
        mine->block_size);
   } while (bytesRead > 0);
  }

  if (mine->filename_type != FNT_STDIN)
   close(mine->fd);
 }
 free(mine->buffer);
 mine->buffer = ((void*)0);
 mine->fd = -1;
 return (ARCHIVE_OK);
}
