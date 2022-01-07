
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int after_last_match ;
 char const* bufbeg ;
 char const* buflim ;
 int bufoffset ;
 char eolbyte ;
 char const* lastout ;
 char* memchr (char const*,char,int) ;
 scalar_t__ out_after ;
 int out_before ;
 scalar_t__ out_quiet ;
 int outleft ;
 scalar_t__ pending ;
 int prline (char const*,char const*,char) ;
 int prpending (char const*) ;
 int puts (char*) ;

__attribute__((used)) static void
prtext (char const *beg, char const *lim, int *nlinesp)
{
  static int used;
  char const *bp, *p;
  char eol = eolbyte;
  int i, n;

  if (!out_quiet && pending > 0)
    prpending (beg);

  p = beg;

  if (!out_quiet)
    {


      bp = lastout ? lastout : bufbeg;
      for (i = 0; i < out_before; ++i)
 if (p > bp)
   do
     --p;
   while (p[-1] != eol);



      if ((out_before || out_after) && used && p != lastout)
 puts ("--");

      while (p < beg)
 {
   char const *nl = memchr (p, eol, beg - p);
   nl++;
   prline (p, nl, '-');
   p = nl;
 }
    }

  if (nlinesp)
    {

      for (n = 0; p < lim && n < outleft; n++)
 {
   char const *nl = memchr (p, eol, lim - p);
   nl++;
   if (!out_quiet)
     prline (p, nl, ':');
   p = nl;
 }
      *nlinesp = n;


      after_last_match = bufoffset - (buflim - p);
    }
  else
    if (!out_quiet)
      prline (beg, lim, ':');

  pending = out_quiet ? 0 : out_after;
  used = 1;
}
