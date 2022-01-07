
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_8__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_9__ {TYPE_2__* In; } ;
struct TYPE_11__ {TYPE_1__ Stream; } ;
struct TYPE_10__ {int * Read; struct archive_read* a; } ;
struct zip {int ppmd8_valid; int uncompressed_buffer_size; int decompress_init; scalar_t__ zipx_ppmd_read_compressed; int entry_compressed_bytes_read; int * uncompressed_buffer; TYPE_3__ ppmd8; TYPE_2__ zipx_ppmd_stream; scalar_t__ ppmd8_stream_failed; } ;
struct archive_read {int archive; } ;
struct TYPE_12__ {int (* Ppmd8_Init ) (TYPE_3__*,int,int) ;int (* Ppmd8_RangeDec_Init ) (TYPE_3__*) ;int (* Ppmd8_Alloc ) (TYPE_3__*,int) ;int (* Ppmd8_Construct ) (TYPE_3__*) ;int (* Ppmd8_Free ) (TYPE_3__*) ;} ;


 int ARCHIVE_ERRNO_FILE_FORMAT ;
 int ARCHIVE_ERRNO_PROGRAMMER ;
 int ARCHIVE_FAILED ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int ENOMEM ;
 TYPE_8__ __archive_ppmd8_functions ;
 void* __archive_read_ahead (struct archive_read*,int,int *) ;
 int __archive_read_consume (struct archive_read*,int) ;
 int archive_le16dec (void const*) ;
 int archive_set_error (int *,int ,char*,...) ;
 int free (int *) ;
 scalar_t__ malloc (int) ;
 int ppmd_read ;
 int stub1 (TYPE_3__*) ;
 int stub2 (TYPE_3__*) ;
 int stub3 (TYPE_3__*,int) ;
 int stub4 (TYPE_3__*) ;
 int stub5 (TYPE_3__*,int,int) ;

__attribute__((used)) static int
zipx_ppmd8_init(struct archive_read *a, struct zip *zip)
{
 const void* p;
 uint32_t val;
 uint32_t order;
 uint32_t mem;
 uint32_t restore_method;


 if(zip->ppmd8_valid) {
  __archive_ppmd8_functions.Ppmd8_Free(&zip->ppmd8);
  zip->ppmd8_valid = 0;
 }


 __archive_ppmd8_functions.Ppmd8_Construct(&zip->ppmd8);
 zip->ppmd8_stream_failed = 0;




 zip->ppmd8.Stream.In = &zip->zipx_ppmd_stream;
 zip->zipx_ppmd_stream.a = a;
 zip->zipx_ppmd_stream.Read = &ppmd_read;


 zip->zipx_ppmd_read_compressed = 0;


 p = __archive_read_ahead(a, 2, ((void*)0));
 if(!p) {
  archive_set_error(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
      "Truncated file data in PPMd8 stream");
  return (ARCHIVE_FATAL);
 }
 __archive_read_consume(a, 2);


 val = archive_le16dec(p);
 order = (val & 15) + 1;
 mem = ((val >> 4) & 0xff) + 1;
 restore_method = (val >> 12);

 if(order < 2 || restore_method > 2) {
  archive_set_error(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
      "Invalid parameter set in PPMd8 stream (order=%d, "
      "restore=%d)", order, restore_method);
  return (ARCHIVE_FAILED);
 }


 if(!__archive_ppmd8_functions.Ppmd8_Alloc(&zip->ppmd8, mem << 20)) {
  archive_set_error(&a->archive, ENOMEM,
      "Unable to allocate memory for PPMd8 stream: %d bytes",
      mem << 20);
  return (ARCHIVE_FATAL);
 }



 zip->ppmd8_valid = 1;


 if(!__archive_ppmd8_functions.Ppmd8_RangeDec_Init(&zip->ppmd8)) {
  archive_set_error(&a->archive, ARCHIVE_ERRNO_PROGRAMMER,
      "PPMd8 stream range decoder initialization error");
  return (ARCHIVE_FATAL);
 }

 __archive_ppmd8_functions.Ppmd8_Init(&zip->ppmd8, order,
     restore_method);


 free(zip->uncompressed_buffer);

 zip->uncompressed_buffer_size = 256 * 1024;
 zip->uncompressed_buffer =
     (uint8_t*) malloc(zip->uncompressed_buffer_size);

 if(zip->uncompressed_buffer == ((void*)0)) {
  archive_set_error(&a->archive, ENOMEM,
      "No memory for PPMd8 decompression");
  return ARCHIVE_FATAL;
 }


 zip->decompress_init = 1;





 zip->entry_compressed_bytes_read += 2 + zip->zipx_ppmd_read_compressed;

 return ARCHIVE_OK;
}
