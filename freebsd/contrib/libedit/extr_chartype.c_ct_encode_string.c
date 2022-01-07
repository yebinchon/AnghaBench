
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int wchar_t ;
typedef int ssize_t ;
struct TYPE_4__ {char* cbuff; size_t csize; } ;
typedef TYPE_1__ ct_buffer_t ;


 scalar_t__ CT_BUFSIZ ;
 int abort () ;
 int ct_conv_cbuff_resize (TYPE_1__*,scalar_t__) ;
 int ct_encode_char (char*,size_t,int const) ;

char *
ct_encode_string(const wchar_t *s, ct_buffer_t *conv)
{
 char *dst;
 ssize_t used;

 if (!s)
  return ((void*)0);

 dst = conv->cbuff;
 for (;;) {
  used = (ssize_t)(dst - conv->cbuff);
  if ((conv->csize - (size_t)used) < 5) {
   if (ct_conv_cbuff_resize(conv,
       conv->csize + CT_BUFSIZ) == -1)
    return ((void*)0);
   dst = conv->cbuff + used;
  }
  if (!*s)
   break;
  used = ct_encode_char(dst, (size_t)5, *s);
  if (used == -1)
   abort();
  ++s;
  dst += used;
 }
 *dst = '\0';
 return conv->cbuff;
}
