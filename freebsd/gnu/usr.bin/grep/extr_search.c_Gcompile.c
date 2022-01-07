
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int regexbuf; } ;


 int RE_HAT_LISTS_NOT_NEWLINE ;
 int RE_ICASE ;
 int RE_SYNTAX_GREP ;
 char* _ (char*) ;
 int check_utf8 () ;
 int dfa ;
 int dfacomp (char const*,size_t,int *,int) ;
 int dfasyntax (int,scalar_t__,int ) ;
 int eolbyte ;
 int errno ;
 int error (int,int ,char const*) ;
 int kwsmusts () ;
 scalar_t__ match_icase ;
 scalar_t__ match_lines ;
 scalar_t__ match_words ;
 char* memchr (char const*,char,size_t) ;
 int memcpy (char*,char const*,size_t) ;
 TYPE_1__* patterns ;
 TYPE_1__ patterns0 ;
 int pcount ;
 char* re_compile_pattern (char const*,size_t,int *) ;
 int re_set_syntax (int) ;
 TYPE_1__* realloc (TYPE_1__*,int) ;
 int strcpy (char*,char const*) ;
 size_t strlen (char*) ;
 char* xmalloc (int) ;

__attribute__((used)) static void
Gcompile (char const *pattern, size_t size)
{
  const char *err;
  char const *sep;
  size_t total = size;
  char const *motif = pattern;

  check_utf8 ();
  re_set_syntax (RE_SYNTAX_GREP | RE_HAT_LISTS_NOT_NEWLINE | (match_icase ? RE_ICASE : 0));
  dfasyntax (RE_SYNTAX_GREP | RE_HAT_LISTS_NOT_NEWLINE, match_icase, eolbyte);





  do
    {
      size_t len;
      sep = memchr (motif, '\n', total);
      if (sep)
 {
   len = sep - motif;
   sep++;
   total -= (len + 1);
 }
      else
 {
   len = total;
   total = 0;
 }

      patterns = realloc (patterns, (pcount + 1) * sizeof (*patterns));
      if (patterns == ((void*)0))
 error (2, errno, _("memory exhausted"));

      patterns[pcount] = patterns0;

      if ((err = re_compile_pattern (motif, len,
        &(patterns[pcount].regexbuf))) != 0)
 error (2, 0, err);
      pcount++;

      motif = sep;
    } while (sep && total != 0);





  if (match_words || match_lines)
    {





      static char const line_beg[] = "^\\(";
      static char const line_end[] = "\\)$";
      static char const word_beg[] = "\\(^\\|[^[:alnum:]_]\\)\\(";
      static char const word_end[] = "\\)\\([^[:alnum:]_]\\|$\\)";
      char *n = xmalloc (sizeof word_beg - 1 + size + sizeof word_end);
      size_t i;
      strcpy (n, match_lines ? line_beg : word_beg);
      i = strlen (n);
      memcpy (n + i, pattern, size);
      i += size;
      strcpy (n + i, match_lines ? line_end : word_end);
      i += strlen (n + i);
      pattern = n;
      size = i;
    }

  dfacomp (pattern, size, &dfa, 1);
  kwsmusts ();
}
