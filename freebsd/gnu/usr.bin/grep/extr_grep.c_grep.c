
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int st_mode; } ;
struct stats {TYPE_1__ stat; } ;


 scalar_t__ BINARY_BINARY_FILES ;
 int BZ2_bzclose (scalar_t__) ;
 scalar_t__ BZflag ;
 scalar_t__ RECURSE_DIRECTORIES ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ WITHOUT_MATCH_BINARY_FILES ;
 scalar_t__ Zflag ;
 char* _ (char*) ;
 scalar_t__ add_count (scalar_t__,int) ;
 scalar_t__ after_last_match ;
 scalar_t__ binary_files ;
 char* bufbeg ;
 char* buflim ;
 scalar_t__ bzbufdesc ;
 scalar_t__ close (int) ;
 scalar_t__ directories ;
 scalar_t__ done_on_match ;
 char eolbyte ;
 int errno ;
 int error (int ,int ,char*,char const*) ;
 char* filename ;
 int fillbuf (size_t,struct stats*) ;
 scalar_t__ grepbuf (char*,char*) ;
 int grepdir (char const*,struct stats*) ;
 int gzbufdesc ;
 int gzclose (int ) ;
 int is_EISDIR (int ,char const*) ;
 char* lastnl ;
 char* lastout ;
 scalar_t__ max_count ;
 scalar_t__ memchr (char*,char,int) ;
 int nlscan (char*) ;
 int out_before ;
 scalar_t__ out_byte ;
 int out_invert ;
 scalar_t__ out_line ;
 int out_quiet ;
 scalar_t__ outleft ;
 scalar_t__ pending ;
 int printf (char*,char*) ;
 int prpending (char*) ;
 int reset (int,char const*,struct stats*) ;
 int suppressible_error (char*,int ) ;
 scalar_t__ totalcc ;
 scalar_t__ totalnl ;

__attribute__((used)) static int
grep (int fd, char const *file, struct stats *stats)
{
  int nlines, i;
  int not_text;
  size_t residue, save;
  char oldc;
  char *beg;
  char *lim;
  char eol = eolbyte;

  if (!reset (fd, file, stats))
    return 0;

  if (file && directories == RECURSE_DIRECTORIES
      && S_ISDIR (stats->stat.st_mode))
    {


      if (BZflag && bzbufdesc)
 BZ2_bzclose(bzbufdesc);
      else





      if (close (fd) != 0)
 error (0, errno, "%s", file);
      return grepdir (file, stats) - 2;
    }

  totalcc = 0;
  lastout = 0;
  totalnl = 0;
  outleft = max_count;
  after_last_match = 0;
  pending = 0;

  nlines = 0;
  residue = 0;
  save = 0;

  if (! fillbuf (save, stats))
    {
      if (! is_EISDIR (errno, file))
 suppressible_error (filename, errno);
      return 0;
    }

  not_text = (((binary_files == BINARY_BINARY_FILES && !out_quiet)
        || binary_files == WITHOUT_MATCH_BINARY_FILES)
       && memchr (bufbeg, eol ? '\0' : '\200', buflim - bufbeg));
  if (not_text && binary_files == WITHOUT_MATCH_BINARY_FILES)
    return 0;
  done_on_match += not_text;
  out_quiet += not_text;

  for (;;)
    {
      lastnl = bufbeg;
      if (lastout)
 lastout = bufbeg;

      beg = bufbeg + save;


      if (beg == buflim)
 break;



      oldc = beg[-1];
      beg[-1] = eol;
      for (lim = buflim; lim[-1] != eol; lim--)
 continue;
      beg[-1] = oldc;
      if (lim == beg)
 lim = beg - residue;
      beg -= residue;
      residue = buflim - lim;

      if (beg < lim)
 {
   if (outleft)
     nlines += grepbuf (beg, lim);
   if (pending)
     prpending (lim);
   if((!outleft && !pending) || (nlines && done_on_match && !out_invert))
     goto finish_grep;
 }




      i = 0;
      beg = lim;
      while (i < out_before && beg > bufbeg && beg != lastout)
 {
   ++i;
   do
     --beg;
   while (beg[-1] != eol);
 }


      if (beg != lastout)
 lastout = 0;


      save = residue + lim - beg;
      if (out_byte)
 totalcc = add_count (totalcc, buflim - bufbeg - save);
      if (out_line)
 nlscan (beg);
      if (! fillbuf (save, stats))
 {
   if (! is_EISDIR (errno, file))
     suppressible_error (filename, errno);
   goto finish_grep;
 }
    }
  if (residue)
    {
      *buflim++ = eol;
      if (outleft)
 nlines += grepbuf (bufbeg + save - residue, buflim);
      if (pending)
        prpending (buflim);
    }

 finish_grep:
  done_on_match -= not_text;
  out_quiet -= not_text;
  if ((not_text & ~out_quiet) && nlines != 0)
    printf (_("Binary file %s matches\n"), filename);
  return nlines;
}
