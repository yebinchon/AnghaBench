
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ off_t ;
typedef int io_buf ;
struct TYPE_4__ {int src_name; int src_fd; } ;
typedef TYPE_1__ file_pair ;


 int SEEK_SET ;
 size_t const SIZE_MAX ;
 int _ (char*) ;
 int errno ;
 size_t io_read (TYPE_1__*,int *,size_t) ;
 scalar_t__ lseek (int ,scalar_t__,int ) ;
 int message_error (int ,int ,...) ;
 int strerror (int ) ;

extern bool
io_pread(file_pair *pair, io_buf *buf, size_t size, off_t pos)
{


 if (lseek(pair->src_fd, pos, SEEK_SET) != pos) {
  message_error(_("%s: Error seeking the file: %s"),
    pair->src_name, strerror(errno));
  return 1;
 }

 const size_t amount = io_read(pair, buf, size);
 if (amount == SIZE_MAX)
  return 1;

 if (amount != size) {
  message_error(_("%s: Unexpected end of file"),
    pair->src_name);
  return 1;
 }

 return 0;
}
