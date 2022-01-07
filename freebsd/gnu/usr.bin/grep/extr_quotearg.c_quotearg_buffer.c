
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct quoting_options {int style; } ;


 struct quoting_options const default_quoting_options ;
 size_t quotearg_buffer_restyled (char*,size_t,char const*,size_t,int ,struct quoting_options const*) ;

size_t
quotearg_buffer (char *buffer, size_t buffersize,
   char const *arg, size_t argsize,
   struct quoting_options const *o)
{
  struct quoting_options const *p = o ? o : &default_quoting_options;
  return quotearg_buffer_restyled (buffer, buffersize, arg, argsize,
       p->style, p);
}
