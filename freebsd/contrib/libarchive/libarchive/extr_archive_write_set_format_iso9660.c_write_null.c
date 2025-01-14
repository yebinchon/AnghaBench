
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_write {int dummy; } ;


 int ARCHIVE_OK ;
 int memset (unsigned char*,int ,int) ;
 unsigned char* wb_buffptr (struct archive_write*) ;
 int wb_consume (struct archive_write*,size_t) ;
 size_t wb_remaining (struct archive_write*) ;

__attribute__((used)) static int
write_null(struct archive_write *a, size_t size)
{
 size_t remaining;
 unsigned char *p, *old;
 int r;

 remaining = wb_remaining(a);
 p = wb_buffptr(a);
 if (size <= remaining) {
  memset(p, 0, size);
  return (wb_consume(a, size));
 }
 memset(p, 0, remaining);
 r = wb_consume(a, remaining);
 if (r != ARCHIVE_OK)
  return (r);
 size -= remaining;
 old = p;
 p = wb_buffptr(a);
 memset(p, 0, old - p);
 remaining = wb_remaining(a);
 while (size) {
  size_t wsize = size;

  if (wsize > remaining)
   wsize = remaining;
  r = wb_consume(a, wsize);
  if (r != ARCHIVE_OK)
   return (r);
  size -= wsize;
 }
 return (ARCHIVE_OK);
}
