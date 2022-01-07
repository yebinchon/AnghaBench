
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ actual; scalar_t__ space; scalar_t__ offset; scalar_t__ buf; } ;
typedef TYPE_1__ DUMP_CONTEXT_T ;


 int memcpy (scalar_t__,char const*,int) ;
 int min (int,int) ;

void
vchiq_dump(void *dump_context, const char *str, int len)
{
 DUMP_CONTEXT_T *context = (DUMP_CONTEXT_T *)dump_context;

 if (context->actual < context->space) {
  int copy_bytes;
  if (context->offset > 0) {
   int skip_bytes = min(len, (int)context->offset);
   str += skip_bytes;
   len -= skip_bytes;
   context->offset -= skip_bytes;
   if (context->offset > 0)
    return;
  }
  copy_bytes = min(len, (int)(context->space - context->actual));
  if (copy_bytes == 0)
   return;
  memcpy(context->buf + context->actual, str, copy_bytes);
  context->actual += copy_bytes;
  len -= copy_bytes;




  if ((len == 0) && (str[copy_bytes - 1] == '\0')) {
   char cr = '\n';
   memcpy(context->buf + context->actual - 1, &cr, 1);
  }
 }
}
