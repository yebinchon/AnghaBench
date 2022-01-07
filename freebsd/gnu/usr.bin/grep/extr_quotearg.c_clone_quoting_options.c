
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct quoting_options {int dummy; } ;


 struct quoting_options default_quoting_options ;
 scalar_t__ xmalloc (int) ;

struct quoting_options *
clone_quoting_options (struct quoting_options *o)
{
  struct quoting_options *p
    = (struct quoting_options *) xmalloc (sizeof (struct quoting_options));
  *p = *(o ? o : &default_quoting_options);
  return p;
}
