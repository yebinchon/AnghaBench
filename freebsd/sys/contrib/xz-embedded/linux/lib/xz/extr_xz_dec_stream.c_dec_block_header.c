
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ uncompressed; scalar_t__ compressed; } ;
struct TYPE_5__ {int size; int* buf; int pos; } ;
struct TYPE_4__ {void* uncompressed; void* compressed; } ;
struct xz_dec {int bcj_active; TYPE_3__ block; TYPE_2__ temp; int lzma2; int bcj; TYPE_1__ block_header; void* vli; } ;
typedef enum xz_ret { ____Placeholder_xz_ret } xz_ret ;


 void* VLI_UNKNOWN ;
 int XZ_DATA_ERROR ;
 int XZ_OK ;
 int XZ_OPTIONS_ERROR ;
 scalar_t__ XZ_STREAM_END ;
 scalar_t__ dec_vli (struct xz_dec*,int*,int*,int) ;
 scalar_t__ get_le32 (int*) ;
 scalar_t__ xz_crc32 (int*,int,int ) ;
 int xz_dec_bcj_reset (int ,int) ;
 int xz_dec_lzma2_reset (int ,int) ;

__attribute__((used)) static enum xz_ret dec_block_header(struct xz_dec *s)
{
 enum xz_ret ret;





 s->temp.size -= 4;
 if (xz_crc32(s->temp.buf, s->temp.size, 0)
   != get_le32(s->temp.buf + s->temp.size))
  return XZ_DATA_ERROR;

 s->temp.pos = 2;
 if (s->temp.buf[1] & 0x3F)

  return XZ_OPTIONS_ERROR;


 if (s->temp.buf[1] & 0x40) {
  if (dec_vli(s, s->temp.buf, &s->temp.pos, s->temp.size)
     != XZ_STREAM_END)
   return XZ_DATA_ERROR;

  s->block_header.compressed = s->vli;
 } else {
  s->block_header.compressed = VLI_UNKNOWN;
 }


 if (s->temp.buf[1] & 0x80) {
  if (dec_vli(s, s->temp.buf, &s->temp.pos, s->temp.size)
    != XZ_STREAM_END)
   return XZ_DATA_ERROR;

  s->block_header.uncompressed = s->vli;
 } else {
  s->block_header.uncompressed = VLI_UNKNOWN;
 }
 if (s->temp.size - s->temp.pos < 2)
  return XZ_DATA_ERROR;


 if (s->temp.buf[s->temp.pos++] != 0x21)
  return XZ_OPTIONS_ERROR;


 if (s->temp.buf[s->temp.pos++] != 0x01)
  return XZ_OPTIONS_ERROR;


 if (s->temp.size - s->temp.pos < 1)
  return XZ_DATA_ERROR;

 ret = xz_dec_lzma2_reset(s->lzma2, s->temp.buf[s->temp.pos++]);
 if (ret != XZ_OK)
  return ret;


 while (s->temp.pos < s->temp.size)
  if (s->temp.buf[s->temp.pos++] != 0x00)
   return XZ_OPTIONS_ERROR;

 s->temp.pos = 0;
 s->block.compressed = 0;
 s->block.uncompressed = 0;

 return XZ_OK;
}
