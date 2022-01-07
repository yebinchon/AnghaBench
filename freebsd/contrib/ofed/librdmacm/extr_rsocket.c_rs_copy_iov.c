
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iovec {size_t iov_len; scalar_t__ iov_base; } ;


 int memcpy (void*,scalar_t__,size_t) ;

__attribute__((used)) static void rs_copy_iov(void *dst, const struct iovec **iov, size_t *offset, size_t len)
{
 size_t size;

 while (len) {
  size = (*iov)->iov_len - *offset;
  if (size > len) {
   memcpy (dst, (*iov)->iov_base + *offset, len);
   *offset += len;
   break;
  }

  memcpy(dst, (*iov)->iov_base + *offset, size);
  len -= size;
  dst += size;
  (*iov)++;
  *offset = 0;
 }
}
