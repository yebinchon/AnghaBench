
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int file_pair ;
struct TYPE_2__ {scalar_t__ avail_in; int total_in; int total_out; } ;


 int IO_BUFFER_SIZE ;
 scalar_t__ SIZE_MAX ;
 int in_buf ;
 scalar_t__ io_read (int *,int *,int ) ;
 scalar_t__ io_write (int *,int *,scalar_t__) ;
 int message_progress_update () ;
 TYPE_1__ strm ;
 scalar_t__ user_abort ;

__attribute__((used)) static bool
coder_passthru(file_pair *pair)
{
 while (strm.avail_in != 0) {
  if (user_abort)
   return 0;

  if (io_write(pair, &in_buf, strm.avail_in))
   return 0;

  strm.total_in += strm.avail_in;
  strm.total_out = strm.total_in;
  message_progress_update();

  strm.avail_in = io_read(pair, &in_buf, IO_BUFFER_SIZE);
  if (strm.avail_in == SIZE_MAX)
   return 0;
 }

 return 1;
}
