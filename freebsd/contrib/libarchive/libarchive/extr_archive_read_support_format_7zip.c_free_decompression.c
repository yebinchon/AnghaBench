
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct archive_read {int archive; } ;
struct _7zip {scalar_t__ ppmd7_valid; int ppmd7_context; scalar_t__ stream_valid; int stream; scalar_t__ bzstream_valid; int bzstream; int lzstream; scalar_t__ lzstream_valid; } ;
struct TYPE_2__ {int (* Ppmd7_Free ) (int *) ;} ;


 int ARCHIVE_ERRNO_MISC ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 scalar_t__ BZ2_bzDecompressEnd (int *) ;
 scalar_t__ BZ_OK ;
 scalar_t__ Z_OK ;
 TYPE_1__ __archive_ppmd7_functions ;
 int archive_set_error (int *,int ,char*) ;
 scalar_t__ inflateEnd (int *) ;
 int lzma_end (int *) ;
 int stub1 (int *) ;

__attribute__((used)) static int
free_decompression(struct archive_read *a, struct _7zip *zip)
{
 int r = ARCHIVE_OK;



 (void)a;
 if (zip->ppmd7_valid) {
  __archive_ppmd7_functions.Ppmd7_Free(
   &zip->ppmd7_context);
  zip->ppmd7_valid = 0;
 }
 return (r);
}
