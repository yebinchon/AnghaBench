
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct xz_dec {int pos; int crc; } ;
struct xz_buf {scalar_t__ in_pos; scalar_t__ in_size; int* in; } ;
typedef enum xz_ret { ____Placeholder_xz_ret } xz_ret ;


 int XZ_DATA_ERROR ;
 int XZ_OK ;
 int XZ_STREAM_END ;

__attribute__((used)) static enum xz_ret crc_validate(struct xz_dec *s, struct xz_buf *b,
    uint32_t bits)
{
 do {
  if (b->in_pos == b->in_size)
   return XZ_OK;

  if (((s->crc >> s->pos) & 0xFF) != b->in[b->in_pos++])
   return XZ_DATA_ERROR;

  s->pos += 8;

 } while (s->pos < bits);

 s->crc = 0;
 s->pos = 0;

 return XZ_STREAM_END;
}
