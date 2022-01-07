
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int us_len; int us_maxlen; int * us_buf; } ;
typedef TYPE_1__ unicode_string ;
typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct TYPE_6__ {int as_len; int as_buf; } ;
typedef TYPE_2__ ansi_string ;


 int * ExAllocatePoolWithTag (int ,int,int ) ;
 int NonPagedPool ;
 int STATUS_INSUFFICIENT_RESOURCES ;
 int STATUS_INVALID_PARAMETER ;
 int STATUS_SUCCESS ;
 scalar_t__ TRUE ;
 int ntoskrnl_ascii_to_unicode (int ,int *,int) ;
 int strlen (int ) ;

uint32_t
RtlAnsiStringToUnicodeString(unicode_string *dest, ansi_string *src,
 uint8_t allocate)
{
 if (dest == ((void*)0) || src == ((void*)0))
  return (STATUS_INVALID_PARAMETER);

 if (allocate == TRUE) {
  dest->us_buf = ExAllocatePoolWithTag(NonPagedPool,
      src->as_len * 2, 0);
  if (dest->us_buf == ((void*)0))
   return (STATUS_INSUFFICIENT_RESOURCES);
  dest->us_len = dest->us_maxlen = strlen(src->as_buf) * 2;
 } else {
  dest->us_len = src->as_len * 2;
  if (dest->us_maxlen < dest->us_len)
   dest->us_len = dest->us_maxlen;
 }

 ntoskrnl_ascii_to_unicode(src->as_buf, dest->us_buf,
     dest->us_len / 2);

 return (STATUS_SUCCESS);
}
