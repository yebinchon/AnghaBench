
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct archive_write {int archive; scalar_t__ format_data; } ;
struct TYPE_7__ {int avail_out; scalar_t__ total_out; int next_out; scalar_t__ total_in; } ;
struct _7zip {TYPE_1__ stream; int wbuff; } ;


 int ARCHIVE_OK ;
 int PPMD7_DEFAULT_MEM_SIZE ;
 int PPMD7_DEFAULT_ORDER ;






 int compression_init_encoder_bzip2 (int *,TYPE_1__*,int) ;
 int compression_init_encoder_copy (int *,TYPE_1__*) ;
 int compression_init_encoder_deflate (int *,TYPE_1__*,int,int ) ;
 int compression_init_encoder_lzma1 (int *,TYPE_1__*,int) ;
 int compression_init_encoder_lzma2 (int *,TYPE_1__*,int) ;
 int compression_init_encoder_ppmd (int *,TYPE_1__*,int ,int ) ;

__attribute__((used)) static int
_7z_compression_init_encoder(struct archive_write *a, unsigned compression,
    int compression_level)
{
 struct _7zip *zip;
 int r;

 zip = (struct _7zip *)a->format_data;
 switch (compression) {
 case 131:
  r = compression_init_encoder_deflate(
      &(a->archive), &(zip->stream),
      compression_level, 0);
  break;
 case 133:
  r = compression_init_encoder_bzip2(
      &(a->archive), &(zip->stream),
      compression_level);
  break;
 case 130:
  r = compression_init_encoder_lzma1(
      &(a->archive), &(zip->stream),
      compression_level);
  break;
 case 129:
  r = compression_init_encoder_lzma2(
      &(a->archive), &(zip->stream),
      compression_level);
  break;
 case 128:
  r = compression_init_encoder_ppmd(
      &(a->archive), &(zip->stream),
      PPMD7_DEFAULT_ORDER, PPMD7_DEFAULT_MEM_SIZE);
  break;
 case 132:
 default:
  r = compression_init_encoder_copy(
      &(a->archive), &(zip->stream));
  break;
 }
 if (r == ARCHIVE_OK) {
  zip->stream.total_in = 0;
  zip->stream.next_out = zip->wbuff;
  zip->stream.avail_out = sizeof(zip->wbuff);
  zip->stream.total_out = 0;
 }

 return (r);
}
