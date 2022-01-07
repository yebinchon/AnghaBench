
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int wchar_t ;
struct kwsmatch {scalar_t__ index; } ;
typedef int ptrdiff_t ;
typedef int mbstate_t ;
typedef int mbs ;
struct TYPE_7__ {int* end; } ;
struct TYPE_6__ {int not_eol; } ;
struct TYPE_8__ {TYPE_2__ regs; TYPE_1__ regexbuf; } ;


 int MB_CUR_MAX ;
 int WCHAR (unsigned char) ;
 int assert (int) ;
 int atoi (char*) ;
 int dfa ;
 size_t dfaexec (int *,char const*,int,int*) ;
 char eolbyte ;
 char* getenv (char*) ;
 scalar_t__ iswalnum (int) ;
 scalar_t__ kwset ;
 scalar_t__ kwset_exact_matches ;
 size_t kwsexec (scalar_t__,char const*,int,struct kwsmatch*) ;
 scalar_t__ match_icase ;
 scalar_t__ match_lines ;
 scalar_t__ match_words ;
 size_t mbrlen (char const*,size_t,int *) ;
 size_t mbrtowc (int*,char const*,int,int *) ;
 int mbtowc (int*,char const*,int) ;
 char* memchr (char const*,char,int) ;
 int memset (int *,char,int) ;
 TYPE_5__* patterns ;
 size_t pcount ;
 int re_match (TYPE_1__*,char const*,int,int,TYPE_2__*) ;
 int re_search (TYPE_1__*,char const*,int,int,int,TYPE_2__*) ;
 scalar_t__ using_utf8 ;

__attribute__((used)) static size_t
EGexecute (char const *buf, size_t size, size_t *match_size, int exact)
{
  register char const *buflim, *beg, *end;
  char eol = eolbyte;
  int backref;
  ptrdiff_t start, len;
  struct kwsmatch kwsm;
  size_t i, ret_val;
  static int use_dfa;
  static int use_dfa_checked = 0;







  if (!use_dfa_checked)
    {
      char *grep_use_dfa = getenv ("GREP_USE_DFA");
      if (!grep_use_dfa)
 {




   use_dfa = 1;

 }
      else
 {
   use_dfa = atoi (grep_use_dfa);
 }

      use_dfa_checked = 1;
    }

  buflim = buf + size;

  for (beg = end = buf; end < buflim; beg = end)
    {
      if (!exact)
 {
   if (kwset)
     {




       size_t offset;







       offset = kwsexec (kwset, beg, buflim - beg, &kwsm);
       if (offset == (size_t) -1)
         goto failure;
       beg += offset;


       end = memchr(beg, eol, buflim - beg);
       end++;




       while (beg > buf && beg[-1] != eol)
  --beg;
       if (



    (kwsm.index < kwset_exact_matches))
  goto success_in_beg_and_end;
       if (use_dfa &&
    dfaexec (&dfa, beg, end - beg, &backref) == (size_t) -1)
  continue;
     }
   else
     {




       size_t offset = 0;
       if (use_dfa)
  offset = dfaexec (&dfa, beg, buflim - beg, &backref);
       if (offset == (size_t) -1)
  break;
       beg += offset;
       end = memchr (beg, eol, buflim - beg);
       end++;




       while (beg > buf && beg[-1] != eol)
  --beg;
     }

   if (use_dfa && !backref)
     goto success_in_beg_and_end;
 }
      else
 end = beg + size;



      for (i = 0; i < pcount; i++)
 {
   patterns[i].regexbuf.not_eol = 0;
   if (0 <= (start = re_search (&(patterns[i].regexbuf), beg,
           end - beg - 1, 0,
           end - beg - 1, &(patterns[i].regs))))
     {
       len = patterns[i].regs.end[0] - start;
       if (exact && !match_words)
         goto success_in_start_and_len;
       if ((!match_lines && !match_words)
    || (match_lines && len == end - beg - 1))
  goto success_in_beg_and_end;







       if (match_words)
  while (start >= 0)
    {
      int lword_match = 0;
      if (start == 0)
        lword_match = 1;
      else
        {
   assert (start > 0);
   if (!WCHAR ((unsigned char) beg[start - 1]))
     lword_match = 1;
        }

      if (lword_match)
        {
   int rword_match = 0;
   if (start + len == end - beg - 1)
     rword_match = 1;
   else
     {
       if (!WCHAR ((unsigned char) beg[start + len]))
         rword_match = 1;
     }

   if (rword_match)
     {
       if (!exact)

         goto success_in_beg_and_end;
       else

         goto success_in_start_and_len;
     }
        }
      if (len > 0)
        {

   --len;
   patterns[i].regexbuf.not_eol = 1;
   len = re_match (&(patterns[i].regexbuf), beg,
     start + len, start,
     &(patterns[i].regs));
        }
      if (len <= 0)
        {

   if (start == end - beg - 1)
     break;
   ++start;
   patterns[i].regexbuf.not_eol = 0;
   start = re_search (&(patterns[i].regexbuf), beg,
        end - beg - 1,
        start, end - beg - 1 - start,
        &(patterns[i].regs));
   len = patterns[i].regs.end[0] - start;
        }
    }
     }
 }
    }

 failure:
  return (size_t) -1;

 success_in_beg_and_end:
  len = end - beg;
  start = beg - buf;


 success_in_start_and_len:
  *match_size = len;
  return start;
}
