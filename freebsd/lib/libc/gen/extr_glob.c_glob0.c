
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct glob_limit {int dummy; } ;
struct TYPE_6__ {size_t gl_pathc; int gl_flags; } ;
typedef TYPE_1__ glob_t ;
typedef int Char ;


 void* CHAR (int) ;
 int E2BIG ;
 int EOS ;
 int GLOB_MAGCHAR ;
 int GLOB_NOSPACE ;

 int MAXPATHLEN ;
 int M_ALL ;
 int M_END ;
 int M_NOT ;
 int M_ONE ;
 int M_RNG ;
 int M_SET ;
 int NOT ;

 int const RANGE ;
 int RBRACKET ;

 int errno ;
 int * g_strchr (int const*,int) ;
 int glob1 (int*,TYPE_1__*,struct glob_limit*) ;
 int globfinal (TYPE_1__*,struct glob_limit*,size_t,char const*) ;
 int* globtilde (int const*,int*,int,TYPE_1__*) ;
 int qprintf (char*,int*) ;

__attribute__((used)) static int
glob0(const Char *pattern, glob_t *pglob, struct glob_limit *limit,
    const char *origpat) {
 const Char *qpatnext;
 int err;
 size_t oldpathc;
 Char *bufnext, c, patbuf[MAXPATHLEN];

 qpatnext = globtilde(pattern, patbuf, MAXPATHLEN, pglob);
 if (qpatnext == ((void*)0)) {
  errno = E2BIG;
  return (GLOB_NOSPACE);
 }
 oldpathc = pglob->gl_pathc;
 bufnext = patbuf;


 while ((c = *qpatnext++) != EOS) {
  switch (c) {
  case 130:
   c = *qpatnext;
   if (c == NOT)
    ++qpatnext;
   if (*qpatnext == EOS ||
       g_strchr(qpatnext+1, RBRACKET) == ((void*)0)) {
    *bufnext++ = 130;
    if (c == NOT)
     --qpatnext;
    break;
   }
   *bufnext++ = M_SET;
   if (c == NOT)
    *bufnext++ = M_NOT;
   c = *qpatnext++;
   do {
    *bufnext++ = CHAR(c);
    if (*qpatnext == RANGE &&
        (c = qpatnext[1]) != RBRACKET) {
     *bufnext++ = M_RNG;
     *bufnext++ = CHAR(c);
     qpatnext += 2;
    }
   } while ((c = *qpatnext++) != RBRACKET);
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
 *bufnext = EOS;




 if ((err = glob1(patbuf, pglob, limit)) != 0)
  return(err);

 if (origpat != ((void*)0))
  return (globfinal(pglob, limit, oldpathc, origpat));

 return (0);
}
