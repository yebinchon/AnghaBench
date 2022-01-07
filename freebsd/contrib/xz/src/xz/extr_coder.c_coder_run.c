
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_14__ {scalar_t__ st_size; } ;
struct TYPE_15__ {TYPE_1__ src_st; } ;
typedef TYPE_2__ file_pair ;
typedef enum coder_init_ret { ____Placeholder_coder_init_ret } coder_init_ret ;
struct TYPE_17__ {int * u8; } ;
struct TYPE_16__ {scalar_t__ avail_in; int * next_in; } ;


 int const CODER_INIT_ERROR ;
 int const CODER_INIT_NORMAL ;
 int IO_BUFFER_SIZE ;
 scalar_t__ MODE_COMPRESS ;
 scalar_t__ MODE_TEST ;
 scalar_t__ SIZE_MAX ;
 int coder_init (TYPE_2__*) ;
 int coder_normal (TYPE_2__*) ;
 int coder_passthru (TYPE_2__*) ;
 TYPE_6__ in_buf ;
 int io_close (TYPE_2__*,int) ;
 int io_open_dest (TYPE_2__*) ;
 TYPE_2__* io_open_src (char const*) ;
 scalar_t__ io_read (TYPE_2__*,TYPE_6__*,int ) ;
 int message_filename (char const*) ;
 int message_progress_end (int) ;
 int message_progress_start (TYPE_3__*,scalar_t__ const) ;
 int mytime_set_start_time () ;
 scalar_t__ opt_mode ;
 TYPE_3__ strm ;
 int user_abort ;

extern void
coder_run(const char *filename)
{

 message_filename(filename);


 file_pair *pair = io_open_src(filename);
 if (pair == ((void*)0))
  return;


 bool success = 0;

 if (opt_mode == MODE_COMPRESS) {
  strm.next_in = ((void*)0);
  strm.avail_in = 0;
 } else {


  strm.next_in = in_buf.u8;
  strm.avail_in = io_read(pair, &in_buf, IO_BUFFER_SIZE);
 }

 if (strm.avail_in != SIZE_MAX) {






  const enum coder_init_ret init_ret = coder_init(pair);

  if (init_ret != CODER_INIT_ERROR && !user_abort) {


   if (opt_mode == MODE_TEST || !io_open_dest(pair)) {



    mytime_set_start_time();


    const uint64_t in_size
      = pair->src_st.st_size <= 0
      ? 0 : pair->src_st.st_size;
    message_progress_start(&strm, in_size);


    if (init_ret == CODER_INIT_NORMAL)
     success = coder_normal(pair);
    else
     success = coder_passthru(pair);

    message_progress_end(success);
   }
  }
 }



 io_close(pair, success);

 return;
}
