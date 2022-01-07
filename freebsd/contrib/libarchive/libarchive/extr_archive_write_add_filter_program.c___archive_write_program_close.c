
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_write_program_data {scalar_t__ child; int child_stdin; int child_stdout; int program_name; scalar_t__ child_buf_avail; scalar_t__ child_buf; scalar_t__ child_buf_len; } ;
struct archive_write_filter {int next_filter; int archive; } ;
typedef int ssize_t ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int CloseHandle (scalar_t__) ;
 scalar_t__ EINTR ;
 scalar_t__ EIO ;
 scalar_t__ EPIPE ;
 int F_SETFL ;
 int __archive_write_close_filter (int ) ;
 int __archive_write_filter (int ,scalar_t__,scalar_t__) ;
 int archive_set_error (int ,scalar_t__,char*,int ) ;
 int close (int) ;
 scalar_t__ errno ;
 int fcntl (int,int ,int ) ;
 int read (int,scalar_t__,scalar_t__) ;
 int waitpid (scalar_t__,int*,int ) ;

int
__archive_write_program_close(struct archive_write_filter *f,
    struct archive_write_program_data *data)
{
 int ret, r1, status;
 ssize_t bytes_read;

 if (data->child == 0)
  return __archive_write_close_filter(f->next_filter);

 ret = 0;
 close(data->child_stdin);
 data->child_stdin = -1;
 fcntl(data->child_stdout, F_SETFL, 0);

 for (;;) {
  do {
   bytes_read = read(data->child_stdout,
       data->child_buf + data->child_buf_avail,
       data->child_buf_len - data->child_buf_avail);
  } while (bytes_read == -1 && errno == EINTR);

  if (bytes_read == 0 || (bytes_read == -1 && errno == EPIPE))
   break;

  if (bytes_read == -1) {
   archive_set_error(f->archive, errno,
       "Error reading from program: %s", data->program_name);
   ret = ARCHIVE_FATAL;
   goto cleanup;
  }
  data->child_buf_avail += bytes_read;

  ret = __archive_write_filter(f->next_filter,
      data->child_buf, data->child_buf_avail);
  if (ret != ARCHIVE_OK) {
   ret = ARCHIVE_FATAL;
   goto cleanup;
  }
  data->child_buf_avail = 0;
 }

cleanup:

 if (data->child_stdin != -1)
  close(data->child_stdin);
 if (data->child_stdout != -1)
  close(data->child_stdout);
 while (waitpid(data->child, &status, 0) == -1 && errno == EINTR)
  continue;



 data->child = 0;

 if (status != 0) {
  archive_set_error(f->archive, EIO,
      "Error closing program: %s", data->program_name);
  ret = ARCHIVE_FATAL;
 }
 r1 = __archive_write_close_filter(f->next_filter);
 return (r1 < ret ? r1 : ret);
}
