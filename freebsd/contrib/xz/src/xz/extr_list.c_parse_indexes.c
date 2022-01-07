
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


struct TYPE_22__ {int * idx; int stream_padding; } ;
typedef TYPE_2__ xz_file_info ;
typedef scalar_t__ uint64_t ;
typedef int off_t ;
typedef scalar_t__ lzma_vli ;
struct TYPE_23__ {scalar_t__ version; scalar_t__ backward_size; } ;
typedef TYPE_3__ lzma_stream_flags ;
struct TYPE_24__ {int avail_in; int next_in; } ;
typedef TYPE_4__ lzma_stream ;
typedef int lzma_ret ;
typedef int lzma_index ;
struct TYPE_25__ {scalar_t__* u32; int u8; } ;
typedef TYPE_5__ io_buf ;
struct TYPE_21__ {int st_size; } ;
struct TYPE_26__ {int src_name; TYPE_1__ src_st; } ;
typedef TYPE_6__ file_pair ;


 int IO_BUFFER_SIZE ;
 int LZMA_BUF_ERROR ;
 int LZMA_DATA_ERROR ;
 int LZMA_MEMLIMIT_ERROR ;
 int LZMA_OK ;
 int LZMA_OPTIONS_ERROR ;
 int LZMA_RUN ;
 int LZMA_STREAM_END ;
 int LZMA_STREAM_HEADER_SIZE ;
 TYPE_4__ LZMA_STREAM_INIT ;
 int MODE_LIST ;
 scalar_t__ UINT64_MAX ;
 int V_ERROR ;
 int _ (char*) ;
 scalar_t__ hardware_memlimit_get (int ) ;
 scalar_t__ io_pread (TYPE_6__*,TYPE_5__*,int,int) ;
 int lzma_code (TYPE_4__*,int ) ;
 int lzma_end (TYPE_4__*) ;
 int lzma_index_cat (int *,int *,int *) ;
 int lzma_index_decoder (TYPE_4__*,int **,scalar_t__) ;
 int lzma_index_end (int *,int *) ;
 scalar_t__ lzma_index_memused (int *) ;
 int lzma_index_stream_flags (int *,TYPE_3__*) ;
 int lzma_index_stream_padding (int *,scalar_t__) ;
 scalar_t__ lzma_index_total_size (int *) ;
 scalar_t__ lzma_memusage (TYPE_4__*) ;
 int lzma_stream_flags_compare (TYPE_3__*,TYPE_3__*) ;
 int lzma_stream_footer_decode (TYPE_3__*,int ) ;
 int lzma_stream_header_decode (TYPE_3__*,int ) ;
 int message_bug () ;
 int message_error (char*,int ,...) ;
 int message_mem_needed (int ,scalar_t__) ;
 int message_strm (int ) ;
 int my_min (int ,scalar_t__) ;

__attribute__((used)) static bool
parse_indexes(xz_file_info *xfi, file_pair *pair)
{
 if (pair->src_st.st_size <= 0) {
  message_error(_("%s: File is empty"), pair->src_name);
  return 1;
 }

 if (pair->src_st.st_size < 2 * LZMA_STREAM_HEADER_SIZE) {
  message_error(_("%s: Too small to be a valid .xz file"),
    pair->src_name);
  return 1;
 }

 io_buf buf;
 lzma_stream_flags header_flags;
 lzma_stream_flags footer_flags;
 lzma_ret ret;


 lzma_stream strm = LZMA_STREAM_INIT;


 lzma_index *combined_index = ((void*)0);


 lzma_index *this_index = ((void*)0);



 off_t pos = pair->src_st.st_size;


 do {



  if (pos < 2 * LZMA_STREAM_HEADER_SIZE) {
   message_error("%s: %s", pair->src_name,
     message_strm(LZMA_DATA_ERROR));
   goto error;
  }

  pos -= LZMA_STREAM_HEADER_SIZE;
  lzma_vli stream_padding = 0;



  while (1) {
   if (pos < LZMA_STREAM_HEADER_SIZE) {
    message_error("%s: %s", pair->src_name,
      message_strm(
       LZMA_DATA_ERROR));
    goto error;
   }

   if (io_pread(pair, &buf,
     LZMA_STREAM_HEADER_SIZE, pos))
    goto error;


   int i = 2;
   if (buf.u32[i] != 0)
    break;





   do {
    stream_padding += 4;
    pos -= 4;
    --i;
   } while (i >= 0 && buf.u32[i] == 0);
  }


  ret = lzma_stream_footer_decode(&footer_flags, buf.u8);
  if (ret != LZMA_OK) {
   message_error("%s: %s", pair->src_name,
     message_strm(ret));
   goto error;
  }
  if (footer_flags.version != 0) {
   message_error("%s: %s", pair->src_name,
     message_strm(LZMA_OPTIONS_ERROR));
   goto error;
  }


  lzma_vli index_size = footer_flags.backward_size;
  if ((lzma_vli)(pos) < index_size + LZMA_STREAM_HEADER_SIZE) {
   message_error("%s: %s", pair->src_name,
     message_strm(LZMA_DATA_ERROR));
   goto error;
  }


  pos -= index_size;


  uint64_t memlimit = hardware_memlimit_get(MODE_LIST);
  uint64_t memused = 0;
  if (combined_index != ((void*)0)) {
   memused = lzma_index_memused(combined_index);
   if (memused > memlimit)
    message_bug();

   memlimit -= memused;
  }


  ret = lzma_index_decoder(&strm, &this_index, memlimit);
  if (ret != LZMA_OK) {
   message_error("%s: %s", pair->src_name,
     message_strm(ret));
   goto error;
  }

  do {


   strm.avail_in = my_min(IO_BUFFER_SIZE, index_size);
   if (io_pread(pair, &buf, strm.avail_in, pos))
    goto error;

   pos += strm.avail_in;
   index_size -= strm.avail_in;

   strm.next_in = buf.u8;
   ret = lzma_code(&strm, LZMA_RUN);

  } while (ret == LZMA_OK);




  if (ret == LZMA_STREAM_END)
   if (index_size != 0 || strm.avail_in != 0)
    ret = LZMA_DATA_ERROR;

  if (ret != LZMA_STREAM_END) {





   if (ret == LZMA_BUF_ERROR)
    ret = LZMA_DATA_ERROR;

   message_error("%s: %s", pair->src_name,
     message_strm(ret));



   if (ret == LZMA_MEMLIMIT_ERROR) {
    uint64_t needed = lzma_memusage(&strm);
    if (UINT64_MAX - needed < memused)
     needed = UINT64_MAX;
    else
     needed += memused;

    message_mem_needed(V_ERROR, needed);
   }

   goto error;
  }



  pos -= footer_flags.backward_size + LZMA_STREAM_HEADER_SIZE;
  if ((lzma_vli)(pos) < lzma_index_total_size(this_index)) {
   message_error("%s: %s", pair->src_name,
     message_strm(LZMA_DATA_ERROR));
   goto error;
  }

  pos -= lzma_index_total_size(this_index);
  if (io_pread(pair, &buf, LZMA_STREAM_HEADER_SIZE, pos))
   goto error;

  ret = lzma_stream_header_decode(&header_flags, buf.u8);
  if (ret != LZMA_OK) {
   message_error("%s: %s", pair->src_name,
     message_strm(ret));
   goto error;
  }

  ret = lzma_stream_flags_compare(&header_flags, &footer_flags);
  if (ret != LZMA_OK) {
   message_error("%s: %s", pair->src_name,
     message_strm(ret));
   goto error;
  }




  ret = lzma_index_stream_flags(this_index, &footer_flags);
  if (ret != LZMA_OK)
   message_bug();



  ret = lzma_index_stream_padding(this_index, stream_padding);
  if (ret != LZMA_OK)
   message_bug();

  if (combined_index != ((void*)0)) {


   ret = lzma_index_cat(
     this_index, combined_index, ((void*)0));
   if (ret != LZMA_OK) {
    message_error("%s: %s", pair->src_name,
      message_strm(ret));
    goto error;
   }
  }

  combined_index = this_index;
  this_index = ((void*)0);

  xfi->stream_padding += stream_padding;

 } while (pos > 0);

 lzma_end(&strm);


 xfi->idx = combined_index;
 return 0;

error:

 lzma_end(&strm);
 lzma_index_end(combined_index, ((void*)0));
 lzma_index_end(this_index, ((void*)0));
 return 1;
}
