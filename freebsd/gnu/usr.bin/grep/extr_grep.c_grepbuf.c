
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int after_last_match ;
 char const* buflim ;
 int bufoffset ;
 scalar_t__ done_on_match ;
 size_t execute (char const*,int,size_t*,int ) ;
 int exit (int ) ;
 scalar_t__ exit_on_match ;
 scalar_t__ out_invert ;
 scalar_t__ outleft ;
 int prtext (char const*,char const*,int*) ;
 size_t stub1 (char const*,int,size_t*,int ) ;

__attribute__((used)) static int
grepbuf (char const *beg, char const *lim)
{
  int nlines, n;
  register char const *p;
  size_t match_offset;
  size_t match_size;

  nlines = 0;
  p = beg;
  while ((match_offset = (*execute) (p, lim - p, &match_size, 0)) != (size_t) -1)
    {
      char const *b = p + match_offset;
      char const *endp = b + match_size;

      if (b == lim)
 break;
      if (!out_invert)
 {
   prtext (b, endp, (int *) 0);
   nlines++;
          outleft--;
   if (!outleft || done_on_match)
     {
       if (exit_on_match)
  exit (0);
       after_last_match = bufoffset - (buflim - endp);
       return nlines;
     }
 }
      else if (p < b)
 {
   prtext (p, b, &n);
   nlines += n;
          outleft -= n;
   if (!outleft)
     return nlines;
 }
      p = endp;
    }
  if (out_invert && p < lim)
    {
      prtext (p, lim, &n);
      nlines += n;
      outleft -= n;
    }
  return nlines;
}
