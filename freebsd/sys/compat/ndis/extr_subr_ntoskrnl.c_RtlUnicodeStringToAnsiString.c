
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int us_len; int us_buf; } ;
typedef TYPE_1__ unicode_string ;
typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct TYPE_6__ {int as_len; int as_maxlen; int * as_buf; } ;
typedef TYPE_2__ ansi_string ;


 int * ExAllocatePoolWithTag (int ,int,int ) ;
 int NonPagedPool ;
 int STATUS_INSUFFICIENT_RESOURCES ;
 int STATUS_INVALID_PARAMETER ;
 int STATUS_SUCCESS ;
 scalar_t__ TRUE ;
 int ntoskrnl_unicode_to_ascii (int ,int *,int) ;

uint32_t
RtlUnicodeStringToAnsiString(ansi_string *dest, unicode_string *src, uint8_t allocate)
{
 if (dest == ((void*)0) || src == ((void*)0))
  return (STATUS_INVALID_PARAMETER);

 dest->as_len = src->us_len / 2;
 if (dest->as_maxlen < dest->as_len)
  dest->as_len = dest->as_maxlen;

 if (allocate == TRUE) {
  dest->as_buf = ExAllocatePoolWithTag(NonPagedPool,
      (src->us_len / 2) + 1, 0);
  if (dest->as_buf == ((void*)0))
   return (STATUS_INSUFFICIENT_RESOURCES);
  dest->as_len = dest->as_maxlen = src->us_len / 2;
 } else {
  dest->as_len = src->us_len / 2;
  if (dest->as_maxlen < dest->as_len)
   dest->as_len = dest->as_maxlen;
 }

 ntoskrnl_unicode_to_ascii(src->us_buf, dest->as_buf,
     dest->as_len * 2);

 return (STATUS_SUCCESS);
}
