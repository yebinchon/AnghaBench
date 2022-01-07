
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int buffer; } ;
typedef TYPE_1__ svn_temp_serializer__context_t ;


 int store_current_end_pointer (TYPE_1__*,void const* const*) ;
 scalar_t__ strlen (char const*) ;
 int svn_stringbuf_appendbytes (int ,char const*,scalar_t__) ;

void
svn_temp_serializer__add_string(svn_temp_serializer__context_t *context,
                                const char * const * s)
{
  const char *string = *s;



  store_current_end_pointer(context, (const void *const *)s);


  if (string)
    svn_stringbuf_appendbytes(context->buffer, string, strlen(string) + 1);
}
