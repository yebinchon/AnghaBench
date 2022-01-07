
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_9__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef scalar_t__ lzma_ret ;
typedef scalar_t__ lzma_action ;
struct TYPE_13__ {int src_eof; int src_name; } ;
typedef TYPE_1__ file_pair ;
struct TYPE_16__ {int u8; } ;
struct TYPE_15__ {int u8; } ;
struct TYPE_14__ {scalar_t__ avail_out; int avail_in; int next_out; int next_in; } ;


 scalar_t__ FORMAT_XZ ;
 void* IO_BUFFER_SIZE ;
 scalar_t__ LZMA_DATA_ERROR ;
 scalar_t__ LZMA_FINISH ;
 scalar_t__ LZMA_FULL_BARRIER ;
 scalar_t__ LZMA_MEMLIMIT_ERROR ;
 scalar_t__ LZMA_NO_CHECK ;
 scalar_t__ LZMA_OK ;
 scalar_t__ LZMA_RUN ;
 scalar_t__ LZMA_STREAM_END ;
 scalar_t__ LZMA_SYNC_FLUSH ;
 scalar_t__ LZMA_UNSUPPORTED_CHECK ;
 scalar_t__ MODE_COMPRESS ;
 scalar_t__ MODE_TEST ;
 int SIZE_MAX ;
 scalar_t__ UINT64_MAX ;
 int V_ERROR ;
 int assert (int const) ;
 scalar_t__ flush_needed ;
 int hardware_threads_get () ;
 TYPE_9__ in_buf ;
 int io_fix_src_pos (TYPE_1__*,int) ;
 void* io_read (TYPE_1__*,TYPE_9__*,int) ;
 scalar_t__ io_write (TYPE_1__*,TYPE_3__*,void*) ;
 scalar_t__ lzma_code (TYPE_2__*,scalar_t__) ;
 int lzma_memusage (TYPE_2__*) ;
 int message_error (char*,int ,int ) ;
 int message_mem_needed (int ,int ) ;
 int message_progress_update () ;
 int message_strm (scalar_t__) ;
 int message_warning (char*,int ,int ) ;
 int my_min (scalar_t__,void*) ;
 int mytime_set_flush_time () ;
 scalar_t__* opt_block_list ;
 scalar_t__ opt_block_size ;
 scalar_t__ opt_format ;
 scalar_t__ opt_mode ;
 scalar_t__ opt_single_stream ;
 TYPE_3__ out_buf ;
 int split_block (scalar_t__*,scalar_t__*,size_t*) ;
 TYPE_2__ strm ;
 int user_abort ;

__attribute__((used)) static bool
coder_normal(file_pair *pair)
{





 lzma_action action = pair->src_eof ? LZMA_FINISH : LZMA_RUN;

 lzma_ret ret;


 bool success = 0;






 uint64_t block_remaining = UINT64_MAX;



 uint64_t next_block_remaining = 0;


 size_t list_pos = 0;



 if (opt_mode == MODE_COMPRESS && opt_format == FORMAT_XZ) {



  if (hardware_threads_get() == 1 && opt_block_size > 0)
   block_remaining = opt_block_size;
  if (opt_block_list != ((void*)0)) {
   if (block_remaining < opt_block_list[list_pos]) {
    assert(hardware_threads_get() == 1);
    next_block_remaining = opt_block_list[list_pos]
      - block_remaining;
   } else {
    block_remaining = opt_block_list[list_pos];
   }
  }
 }

 strm.next_out = out_buf.u8;
 strm.avail_out = IO_BUFFER_SIZE;

 while (!user_abort) {


  if (strm.avail_in == 0 && action == LZMA_RUN) {
   strm.next_in = in_buf.u8;
   strm.avail_in = io_read(pair, &in_buf,
     my_min(block_remaining,
      IO_BUFFER_SIZE));

   if (strm.avail_in == SIZE_MAX)
    break;

   if (pair->src_eof) {
    action = LZMA_FINISH;

   } else if (block_remaining != UINT64_MAX) {


    block_remaining -= strm.avail_in;
    if (block_remaining == 0)
     action = LZMA_FULL_BARRIER;
   }

   if (action == LZMA_RUN && flush_needed)
    action = LZMA_SYNC_FLUSH;
  }


  ret = lzma_code(&strm, action);


  if (strm.avail_out == 0) {
   if (opt_mode != MODE_TEST && io_write(pair, &out_buf,
     IO_BUFFER_SIZE - strm.avail_out))
    break;

   strm.next_out = out_buf.u8;
   strm.avail_out = IO_BUFFER_SIZE;
  }

  if (ret == LZMA_STREAM_END && (action == LZMA_SYNC_FLUSH
    || action == LZMA_FULL_BARRIER)) {
   if (action == LZMA_SYNC_FLUSH) {



    if (io_write(pair, &out_buf, IO_BUFFER_SIZE
      - strm.avail_out))
     break;

    strm.next_out = out_buf.u8;
    strm.avail_out = IO_BUFFER_SIZE;


    mytime_set_flush_time();
   } else {

    if (opt_block_list == ((void*)0)) {
     assert(hardware_threads_get() == 1);
     assert(opt_block_size > 0);
     block_remaining = opt_block_size;
    } else {
     split_block(&block_remaining,
       &next_block_remaining,
       &list_pos);
    }
   }



   action = LZMA_RUN;

  } else if (ret != LZMA_OK) {


   const bool stop = ret != LZMA_NO_CHECK
     && ret != LZMA_UNSUPPORTED_CHECK;

   if (stop) {





    if (opt_mode != MODE_TEST && io_write(pair,
      &out_buf, IO_BUFFER_SIZE
       - strm.avail_out))
     break;
   }

   if (ret == LZMA_STREAM_END) {
    if (opt_single_stream) {
     io_fix_src_pos(pair, strm.avail_in);
     success = 1;
     break;
    }




    if (strm.avail_in == 0 && !pair->src_eof) {




     strm.avail_in = io_read(
       pair, &in_buf, 1);
     if (strm.avail_in == SIZE_MAX)
      break;

     assert(strm.avail_in == 0
       || strm.avail_in == 1);
    }

    if (strm.avail_in == 0) {
     assert(pair->src_eof);
     success = 1;
     break;
    }


    ret = LZMA_DATA_ERROR;
    assert(stop);
   }




   if (stop) {
    message_error("%s: %s", pair->src_name,
      message_strm(ret));
   } else {
    message_warning("%s: %s", pair->src_name,
      message_strm(ret));



    assert(opt_mode != MODE_COMPRESS);
   }

   if (ret == LZMA_MEMLIMIT_ERROR) {


    message_mem_needed(V_ERROR,
      lzma_memusage(&strm));
   }

   if (stop)
    break;
  }


  message_progress_update();
 }

 return success;
}
