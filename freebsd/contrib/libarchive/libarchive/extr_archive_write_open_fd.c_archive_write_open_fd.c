
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct write_fd_data {int fd; } ;
struct archive {int dummy; } ;


 int ARCHIVE_FATAL ;
 int ENOMEM ;
 int O_BINARY ;
 int archive_set_error (struct archive*,int ,char*) ;
 int archive_write_open (struct archive*,struct write_fd_data*,int ,int ,int ) ;
 int file_close ;
 int file_open ;
 int file_write ;
 scalar_t__ malloc (int) ;
 int setmode (int,int ) ;

int
archive_write_open_fd(struct archive *a, int fd)
{
 struct write_fd_data *mine;

 mine = (struct write_fd_data *)malloc(sizeof(*mine));
 if (mine == ((void*)0)) {
  archive_set_error(a, ENOMEM, "No memory");
  return (ARCHIVE_FATAL);
 }
 mine->fd = fd;



 return (archive_write_open(a, mine,
      file_open, file_write, file_close));
}
