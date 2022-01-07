
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_4__ {size_t wsize; int * wbuff; } ;
typedef TYPE_1__ ct_buffer_t ;


 scalar_t__ CT_BUFSIZ ;
 int ct_conv_wbuff_resize (TYPE_1__*,scalar_t__) ;
 size_t mbstowcs (int *,char const*,size_t) ;

wchar_t *
ct_decode_string(const char *s, ct_buffer_t *conv)
{
 size_t len;

 if (!s)
  return ((void*)0);

 len = mbstowcs(((void*)0), s, (size_t)0);
 if (len == (size_t)-1)
  return ((void*)0);

 if (conv->wsize < ++len)
  if (ct_conv_wbuff_resize(conv, len + CT_BUFSIZ) == -1)
   return ((void*)0);

 mbstowcs(conv->wbuff, s, conv->wsize);
 return conv->wbuff;
}
