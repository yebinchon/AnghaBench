
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int gl_pathc; int gl_flags; scalar_t__ gl_offs; scalar_t__ gl_pathv; } ;
typedef TYPE_1__ glob_t ;
typedef int Char ;


 void* CHAR (int) ;
 int CHAR_EOS ;

 int CHAR_NOT ;

 int const CHAR_RANGE ;
 int CHAR_RBRACKET ;

 int GLOB_MAGCHAR ;
 int GLOB_NOCHECK ;
 int GLOB_NOMAGIC ;
 int GLOB_NOSORT ;
 int M_ALL ;
 int M_END ;
 int M_NOT ;
 int M_ONE ;
 int M_RNG ;
 int M_SET ;
 int MaxPathLen ;
 int compare ;
 int * g_strchr (int const*,int) ;
 int glob1 (int*,TYPE_1__*,size_t*) ;
 int globextend (int const*,TYPE_1__*,size_t*) ;
 int* globtilde (int const*,int*,TYPE_1__*) ;
 int qprintf (char*,int*) ;
 int qsort (scalar_t__,int,int,int ) ;

__attribute__((used)) static int
glob0(const Char *pattern, glob_t *pglob)
{
 const Char *qpatnext;
 int c, err, oldpathc;
 Char *bufnext, patbuf[MaxPathLen+1];
 size_t limit = 0;

 qpatnext = globtilde(pattern, patbuf, pglob);
 oldpathc = pglob->gl_pathc;
 bufnext = patbuf;


 while ((c = *qpatnext++) != CHAR_EOS) {
  switch (c) {
  case 130:
   c = *qpatnext;
   if (c == CHAR_NOT)
    ++qpatnext;
   if (*qpatnext == CHAR_EOS ||
       g_strchr(qpatnext+1, CHAR_RBRACKET) == ((void*)0)) {
    *bufnext++ = 130;
    if (c == CHAR_NOT)
     --qpatnext;
    break;
   }
   *bufnext++ = M_SET;
   if (c == CHAR_NOT)
    *bufnext++ = M_NOT;
   c = *qpatnext++;
   do {
    *bufnext++ = CHAR(c);
    if (*qpatnext == CHAR_RANGE &&
        (c = qpatnext[1]) != CHAR_RBRACKET) {
     *bufnext++ = M_RNG;
     *bufnext++ = CHAR(c);
     qpatnext += 2;
    }
   } while ((c = *qpatnext++) != CHAR_RBRACKET);
   pglob->gl_flags |= GLOB_MAGCHAR;
   *bufnext++ = M_END;
   break;
  case 129:
   pglob->gl_flags |= GLOB_MAGCHAR;
   *bufnext++ = M_ONE;
   break;
  case 128:
   pglob->gl_flags |= GLOB_MAGCHAR;



   if (bufnext == patbuf || bufnext[-1] != M_ALL)
       *bufnext++ = M_ALL;
   break;
  default:
   *bufnext++ = CHAR(c);
   break;
  }
 }
 *bufnext = CHAR_EOS;




 if ((err = glob1(patbuf, pglob, &limit)) != 0)
  return(err);







 if (pglob->gl_pathc == oldpathc &&
     ((pglob->gl_flags & GLOB_NOCHECK) ||
       ((pglob->gl_flags & GLOB_NOMAGIC) &&
        !(pglob->gl_flags & GLOB_MAGCHAR))))
  return(globextend(pattern, pglob, &limit));
 else if (!(pglob->gl_flags & GLOB_NOSORT))
  qsort(pglob->gl_pathv + pglob->gl_offs + oldpathc,
      pglob->gl_pathc - oldpathc, sizeof(char *), compare);
 return(0);
}
