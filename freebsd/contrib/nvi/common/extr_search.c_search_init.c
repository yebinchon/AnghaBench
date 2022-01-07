
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int u_int ;
typedef scalar_t__ recno_t ;
typedef void* dir_t ;
struct TYPE_7__ {int lno; scalar_t__* re; size_t re_len; void* searchdir; int re_c; } ;
typedef TYPE_1__ SCR ;
typedef scalar_t__ CHAR_T ;


 int F_ISSET (TYPE_1__*,int ) ;
 scalar_t__ LF_ISSET (int ) ;
 int RE_C_CSCOPE ;
 int RE_C_SEARCH ;
 int RE_C_SILENT ;
 int RE_C_TAG ;
 int SC_RE_SEARCH ;
 int SEARCH_CSCOPE ;
 int SEARCH_MSG ;
 int SEARCH_PARSE ;
 int SEARCH_SET ;
 int SEARCH_TAG ;
 int S_EMPTY ;
 int S_NOPREV ;
 scalar_t__ db_last (TYPE_1__*,scalar_t__*) ;
 scalar_t__ re_compile (TYPE_1__*,scalar_t__*,size_t,scalar_t__**,size_t*,int *,int) ;
 int search_msg (TYPE_1__*,int ) ;

__attribute__((used)) static int
search_init(
 SCR *sp,
 dir_t dir,
 CHAR_T *ptrn,
 size_t plen,
 CHAR_T **epp,
 u_int flags)
{
 recno_t lno;
 int delim;
 CHAR_T *p, *t;


 if (sp->lno <= 1) {
  if (db_last(sp, &lno))
   return (1);
  if (lno == 0) {
   if (LF_ISSET(SEARCH_MSG))
    search_msg(sp, S_EMPTY);
   return (1);
  }
 }

 if (LF_ISSET(SEARCH_PARSE)) {
  if (ptrn == ((void*)0))
   goto prev;
  if (plen == 1) {
   if (epp != ((void*)0))
    *epp = ptrn + 1;
   goto prev;
  }
  if (ptrn[0] == ptrn[1]) {
   if (epp != ((void*)0))
    *epp = ptrn + 2;


prev: if (sp->re == ((void*)0)) {
    search_msg(sp, S_NOPREV);
    return (1);
   }

   if (!F_ISSET(sp, SC_RE_SEARCH) && re_compile(sp,
       sp->re, sp->re_len, ((void*)0), ((void*)0), &sp->re_c,
       RE_C_SEARCH |
       (LF_ISSET(SEARCH_MSG) ? 0 : RE_C_SILENT)))
    return (1);


   if (LF_ISSET(SEARCH_SET))
    sp->searchdir = dir;
   return (0);
  }
  for (delim = *ptrn, p = t = ++ptrn;; *t++ = *p++) {
   if (--plen == 0 || p[0] == delim) {
    if (plen != 0)
     ++p;
    break;
   }
   if (plen > 1 && p[0] == '\\' && p[1] == delim) {
    ++p;
    --plen;
   }
  }
  if (epp != ((void*)0))
   *epp = p;

  plen = t - ptrn;
 }


 if (re_compile(sp, ptrn, plen, &sp->re, &sp->re_len, &sp->re_c,
     RE_C_SEARCH |
     (LF_ISSET(SEARCH_MSG) ? 0 : RE_C_SILENT) |
     (LF_ISSET(SEARCH_TAG) ? RE_C_TAG : 0) |
     (LF_ISSET(SEARCH_CSCOPE) ? RE_C_CSCOPE : 0)))
  return (1);


 if (LF_ISSET(SEARCH_SET))
  sp->searchdir = dir;

 return (0);
}
