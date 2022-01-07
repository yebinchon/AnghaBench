
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct xz_buf {scalar_t__ out_pos; scalar_t__ out; } ;
struct dictionary {size_t pos; size_t start; scalar_t__ end; size_t buf; int mode; } ;


 scalar_t__ DEC_IS_MULTI (int ) ;
 int memcpy (scalar_t__,size_t,size_t) ;

__attribute__((used)) static uint32_t dict_flush(struct dictionary *dict, struct xz_buf *b)
{
 size_t copy_size = dict->pos - dict->start;

 if (DEC_IS_MULTI(dict->mode)) {
  if (dict->pos == dict->end)
   dict->pos = 0;

  memcpy(b->out + b->out_pos, dict->buf + dict->start,
    copy_size);
 }

 dict->start = dict->pos;
 b->out_pos += copy_size;
 return copy_size;
}
