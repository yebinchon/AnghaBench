
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dfa {scalar_t__ nregexps; scalar_t__ nleaves; scalar_t__ depth; scalar_t__ tindex; scalar_t__ cindex; } ;


 scalar_t__ ISUPPER (unsigned char) ;
 int _ (char*) ;
 int case_fold ;
 int dfaanalyze (struct dfa*,int) ;
 int dfaerror (int ) ;
 int dfainit (struct dfa*) ;
 int dfamust (struct dfa*) ;
 int dfaparse (char const*,size_t,struct dfa*) ;
 int free (char*) ;
 char* malloc (size_t) ;
 char tolower (unsigned char) ;

void
dfacomp (char const *s, size_t len, struct dfa *d, int searchflag)
{
  if (case_fold)
    {
      char *lcopy;
      int i;

      lcopy = malloc(len);
      if (!lcopy)
 dfaerror(_("out of memory"));


      case_fold = 0;
      for (i = 0; i < len; ++i)
 if (ISUPPER ((unsigned char) s[i]))
   lcopy[i] = tolower ((unsigned char) s[i]);
 else
   lcopy[i] = s[i];

      dfainit(d);
      dfaparse(lcopy, len, d);
      free(lcopy);
      dfamust(d);
      d->cindex = d->tindex = d->depth = d->nleaves = d->nregexps = 0;
      case_fold = 1;
      dfaparse(s, len, d);
      dfaanalyze(d, searchflag);
    }
  else
    {
        dfainit(d);
        dfaparse(s, len, d);
 dfamust(d);
        dfaanalyze(d, searchflag);
    }
}
