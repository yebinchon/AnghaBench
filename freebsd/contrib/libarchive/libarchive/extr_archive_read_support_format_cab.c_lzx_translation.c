
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct lzx_stream {struct lzx_dec* ds; } ;
struct lzx_dec {scalar_t__ translation_size; int translation; } ;
typedef scalar_t__ int32_t ;


 scalar_t__ archive_le32dec (unsigned char*) ;
 int archive_le32enc (unsigned char*,scalar_t__) ;
 unsigned char* memchr (unsigned char*,int,int) ;

__attribute__((used)) static void
lzx_translation(struct lzx_stream *strm, void *p, size_t size, uint32_t offset)
{
 struct lzx_dec *ds = strm->ds;
 unsigned char *b, *end;

 if (!ds->translation || size <= 10)
  return;
 b = p;
 end = b + size - 10;
 while (b < end && (b = memchr(b, 0xE8, end - b)) != ((void*)0)) {
  size_t i = b - (unsigned char *)p;
  int32_t cp, displacement, value;

  cp = (int32_t)(offset + (uint32_t)i);
  value = archive_le32dec(&b[1]);
  if (value >= -cp && value < (int32_t)ds->translation_size) {
   if (value >= 0)
    displacement = value - cp;
   else
    displacement = value + ds->translation_size;
   archive_le32enc(&b[1], (uint32_t)displacement);
  }
  b += 5;
 }
}
