
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef unsigned char uint8_t ;
typedef int uint64_t ;
typedef void* uInt ;
struct archive_read {int archive; } ;
struct TYPE_11__ {unsigned char const* next_in; size_t avail_in; unsigned char* next_out; size_t avail_out; int total_out; int overconsumed; } ;
struct TYPE_12__ {int p; TYPE_1__* Stream; } ;
struct TYPE_10__ {int * Read; struct archive_read* a; } ;
struct TYPE_14__ {size_t avail_in; unsigned char* next_out; size_t avail_out; int * next_in; } ;
struct TYPE_16__ {char* next_in; size_t avail_in; char* next_out; size_t avail_out; } ;
struct TYPE_13__ {unsigned char const* next_in; size_t avail_in; unsigned char* next_out; size_t avail_out; } ;
struct _7zip {int codec; scalar_t__ codec2; scalar_t__ odd_bcj_size; unsigned char* odd_bcj; size_t tmp_stream_bytes_remaining; size_t main_stream_bytes_remaining; unsigned char* tmp_stream_buff; size_t tmp_stream_buff_size; int ppmd7_stat; size_t tmp_stream_bytes_avail; TYPE_2__ ppstream; TYPE_3__ range_dec; int ppmd7_context; int folder_outbytes_remaining; TYPE_1__ bytein; int ppmd7_valid; TYPE_6__ stream; TYPE_8__ bzstream; int bzstream_valid; TYPE_4__ lzstream; int lzstream_valid; } ;
typedef scalar_t__ ssize_t ;
struct TYPE_15__ {int (* Ppmd7z_RangeDec_Init ) (TYPE_3__*) ;int (* Ppmd7_DecodeSymbol ) (int *,int *) ;} ;
typedef int Bytef ;


 int ARCHIVE_EOF ;
 int ARCHIVE_ERRNO_FILE_FORMAT ;
 int ARCHIVE_ERRNO_MISC ;
 int ARCHIVE_FAILED ;
 int ARCHIVE_OK ;
 int BZ2_bzDecompress (TYPE_8__*) ;
 int BZ2_bzDecompressEnd (TYPE_8__*) ;


 scalar_t__ Bcj2_Decode (struct _7zip*,unsigned char*,size_t) ;

 int LZMA_RUN ;
 scalar_t__ _7Z_X86 ;
 scalar_t__ _7Z_X86_BCJ2 ;
 TYPE_7__ __archive_ppmd7_functions ;
 int archive_set_error (int *,int ,char*,...) ;
 int inflate (TYPE_6__*,int ) ;
 int lzma_code (TYPE_4__*,int ) ;
 int lzma_end (TYPE_4__*) ;
 int memcpy (unsigned char*,unsigned char const*,size_t) ;
 int ppmd_read ;
 int stub1 (TYPE_3__*) ;
 int stub2 (int *,int *) ;
 size_t x86_Convert (struct _7zip*,void*,size_t) ;

__attribute__((used)) static int
decompress(struct archive_read *a, struct _7zip *zip,
    void *buff, size_t *outbytes, const void *b, size_t *used)
{
 const uint8_t *t_next_in;
 uint8_t *t_next_out;
 size_t o_avail_in, o_avail_out;
 size_t t_avail_in, t_avail_out;
 uint8_t *bcj2_next_out;
 size_t bcj2_avail_out;
 int r, ret = ARCHIVE_OK;

 t_avail_in = o_avail_in = *used;
 t_avail_out = o_avail_out = *outbytes;
 t_next_in = b;
 t_next_out = buff;

 if (zip->codec != 129 && zip->codec2 == _7Z_X86) {
  int i;



  if (o_avail_in != 0 && t_avail_out < 5 && zip->odd_bcj_size) {
   *used = 0;
   *outbytes = 0;
   return (ret);
  }
  for (i = 0; zip->odd_bcj_size > 0 && t_avail_out; i++) {
   *t_next_out++ = zip->odd_bcj[i];
   t_avail_out--;
   zip->odd_bcj_size--;
  }
  if (o_avail_in == 0 || t_avail_out == 0) {
   *used = o_avail_in - t_avail_in;
   *outbytes = o_avail_out - t_avail_out;
   if (o_avail_in == 0)
    ret = ARCHIVE_EOF;
   return (ret);
  }
 }

 bcj2_next_out = t_next_out;
 bcj2_avail_out = t_avail_out;
 if (zip->codec2 == _7Z_X86_BCJ2) {



  if (zip->tmp_stream_bytes_remaining) {
   ssize_t bytes;
   size_t remaining = zip->tmp_stream_bytes_remaining;
   bytes = Bcj2_Decode(zip, t_next_out, t_avail_out);
   if (bytes < 0) {
    archive_set_error(&(a->archive),
        ARCHIVE_ERRNO_MISC,
        "BCJ2 conversion Failed");
    return (ARCHIVE_FAILED);
   }
   zip->main_stream_bytes_remaining -=
       remaining - zip->tmp_stream_bytes_remaining;
   t_avail_out -= bytes;
   if (o_avail_in == 0 || t_avail_out == 0) {
    *used = 0;
    *outbytes = o_avail_out - t_avail_out;
    if (o_avail_in == 0 &&
        zip->tmp_stream_bytes_remaining)
     ret = ARCHIVE_EOF;
    return (ret);
   }
   t_next_out += bytes;
   bcj2_next_out = t_next_out;
   bcj2_avail_out = t_avail_out;
  }
  t_next_out = zip->tmp_stream_buff;
  t_avail_out = zip->tmp_stream_buff_size;
 }

 switch (zip->codec) {
 case 132:
 {
  size_t bytes =
      (t_avail_in > t_avail_out)?t_avail_out:t_avail_in;

  memcpy(t_next_out, t_next_in, bytes);
  t_avail_in -= bytes;
  t_avail_out -= bytes;
  if (o_avail_in == 0)
   ret = ARCHIVE_EOF;
  break;
 }
 case 128:
 {
  uint64_t flush_bytes;

  if (!zip->ppmd7_valid || zip->ppmd7_stat < 0 ||
      t_avail_out <= 0) {
   archive_set_error(&(a->archive),
       ARCHIVE_ERRNO_MISC,
       "Decompression internal error");
   return (ARCHIVE_FAILED);
  }
  zip->ppstream.next_in = t_next_in;
  zip->ppstream.avail_in = t_avail_in;
  zip->ppstream.next_out = t_next_out;
  zip->ppstream.avail_out = t_avail_out;
  if (zip->ppmd7_stat == 0) {
   zip->bytein.a = a;
   zip->bytein.Read = &ppmd_read;
   zip->range_dec.Stream = &zip->bytein;
   r = __archive_ppmd7_functions.Ppmd7z_RangeDec_Init(
    &(zip->range_dec));
   if (r == 0) {
    zip->ppmd7_stat = -1;
    archive_set_error(&a->archive,
        ARCHIVE_ERRNO_MISC,
        "Failed to initialize PPMd range decorder");
    return (ARCHIVE_FAILED);
   }
   if (zip->ppstream.overconsumed) {
    zip->ppmd7_stat = -1;
    return (ARCHIVE_FAILED);
   }
   zip->ppmd7_stat = 1;
  }

  if (t_avail_in == 0)

   flush_bytes = zip->folder_outbytes_remaining;
  else
   flush_bytes = 0;

  do {
   int sym;

   sym = __archive_ppmd7_functions.Ppmd7_DecodeSymbol(
    &(zip->ppmd7_context), &(zip->range_dec.p));
   if (sym < 0) {
    zip->ppmd7_stat = -1;
    archive_set_error(&a->archive,
        ARCHIVE_ERRNO_FILE_FORMAT,
        "Failed to decode PPMd");
    return (ARCHIVE_FAILED);
   }
   if (zip->ppstream.overconsumed) {
    zip->ppmd7_stat = -1;
    return (ARCHIVE_FAILED);
   }
   *zip->ppstream.next_out++ = (unsigned char)sym;
   zip->ppstream.avail_out--;
   zip->ppstream.total_out++;
   if (flush_bytes)
    flush_bytes--;
  } while (zip->ppstream.avail_out &&
   (zip->ppstream.avail_in || flush_bytes));

  t_avail_in = (size_t)zip->ppstream.avail_in;
  t_avail_out = (size_t)zip->ppstream.avail_out;
  break;
 }
 default:
  archive_set_error(&(a->archive), ARCHIVE_ERRNO_MISC,
      "Decompression internal error");
  return (ARCHIVE_FAILED);
 }
 if (ret != ARCHIVE_OK && ret != ARCHIVE_EOF)
  return (ret);

 *used = o_avail_in - t_avail_in;
 *outbytes = o_avail_out - t_avail_out;




 if (zip->codec != 129 && zip->codec2 == _7Z_X86) {
  size_t l = x86_Convert(zip, buff, *outbytes);
  zip->odd_bcj_size = *outbytes - l;
  if (zip->odd_bcj_size > 0 && zip->odd_bcj_size <= 4 &&
      o_avail_in && ret != ARCHIVE_EOF) {
   memcpy(zip->odd_bcj, ((unsigned char *)buff) + l,
       zip->odd_bcj_size);
   *outbytes = l;
  } else
   zip->odd_bcj_size = 0;
 }




 if (zip->codec2 == _7Z_X86_BCJ2) {
  ssize_t bytes;

  zip->tmp_stream_bytes_avail =
      zip->tmp_stream_buff_size - t_avail_out;
  if (zip->tmp_stream_bytes_avail >
        zip->main_stream_bytes_remaining)
   zip->tmp_stream_bytes_avail =
       zip->main_stream_bytes_remaining;
  zip->tmp_stream_bytes_remaining = zip->tmp_stream_bytes_avail;
  bytes = Bcj2_Decode(zip, bcj2_next_out, bcj2_avail_out);
  if (bytes < 0) {
   archive_set_error(&(a->archive),
       ARCHIVE_ERRNO_MISC, "BCJ2 conversion Failed");
   return (ARCHIVE_FAILED);
  }
  zip->main_stream_bytes_remaining -=
      zip->tmp_stream_bytes_avail
        - zip->tmp_stream_bytes_remaining;
  bcj2_avail_out -= bytes;
  *outbytes = o_avail_out - bcj2_avail_out;
 }

 return (ret);
}
