
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_5__ {size_t ioDone; int iovCurCount; TYPE_1__* iovCur; } ;
typedef TYPE_2__ evStream ;
struct TYPE_4__ {scalar_t__ iov_len; void* iov_base; } ;



__attribute__((used)) static void
consume(evStream *str, size_t bytes) {
 while (bytes > 0U) {
  if (bytes < (size_t)str->iovCur->iov_len) {
   str->iovCur->iov_len -= bytes;
   str->iovCur->iov_base = (void *)
    ((u_char *)str->iovCur->iov_base + bytes);
   str->ioDone += bytes;
   bytes = 0;
  } else {
   bytes -= str->iovCur->iov_len;
   str->ioDone += str->iovCur->iov_len;
   str->iovCur++;
   str->iovCurCount--;
  }
 }
}
