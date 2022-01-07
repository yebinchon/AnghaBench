
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct accumulated_ui_file {char* buffer; long length; } ;


 int memcpy (char*,char const*,long) ;
 char* xmalloc (long) ;
 char* xrealloc (char*,long) ;

__attribute__((used)) static void
do_ui_file_xstrdup (void *context, const char *buffer, long length)
{
  struct accumulated_ui_file *acc = context;
  if (acc->buffer == ((void*)0))
    acc->buffer = xmalloc (length + 1);
  else
    acc->buffer = xrealloc (acc->buffer, acc->length + length + 1);
  memcpy (acc->buffer + acc->length, buffer, length);
  acc->length += length;
  acc->buffer[acc->length] = '\0';
}
