
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* bufbeg ;
 int eolbyte ;
 size_t execute (char const*,int,size_t*,int ) ;
 char const* lastout ;
 char* memchr (char const*,int ,int) ;
 int out_invert ;
 scalar_t__ outleft ;
 scalar_t__ pending ;
 int prline (char const*,char const*,char) ;
 size_t stub1 (char const*,int,size_t*,int ) ;

__attribute__((used)) static void
prpending (char const *lim)
{
  if (!lastout)
    lastout = bufbeg;
  while (pending > 0 && lastout < lim)
    {
      char const *nl = memchr (lastout, eolbyte, lim - lastout);
      size_t match_size;
      --pending;
      if (outleft
   || (((*execute) (lastout, nl - lastout, &match_size, 0) == (size_t) -1)
       == !out_invert))
 prline (lastout, nl + 1, '-');
      else
 pending = 0;
    }
}
