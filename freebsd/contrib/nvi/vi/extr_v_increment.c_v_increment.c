
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef long u_long ;
typedef int nbuf ;
typedef enum nresult { ____Placeholder_nresult } nresult ;
struct TYPE_17__ {size_t cno; int lno; } ;
struct TYPE_18__ {char character; long count; TYPE_2__ m_start; TYPE_1__* kp; } ;
typedef TYPE_3__ VICMD ;
struct TYPE_19__ {size_t cno; } ;
struct TYPE_16__ {int usage; } ;
typedef TYPE_4__ SCR ;
typedef char CHAR_T ;


 size_t DEC ;
 int FREE_SPACEW (TYPE_4__*,char*,size_t) ;
 scalar_t__ F_ISSET (TYPE_3__*,int ) ;
 int GET_SPACE_RETW (TYPE_4__*,char*,size_t,size_t) ;
 size_t HEXC ;
 size_t HEXL ;
 scalar_t__ ISSPACE (char) ;
 long LONG_MAX ;
 int LONG_MIN ;
 int MEMMOVE (char*,char*,size_t) ;
 int M_ERR ;
 int NNFITS (int ,long,long) ;
 int NPFITS (long,long,long) ;
 int NUM_OK ;
 int NUM_OVER ;
 int NUM_UNDER ;
 size_t OCTAL ;
 size_t SDEC ;
 size_t SPRINTF (char*,int,char*,size_t,...) ;
 long ULONG_MAX ;
 int VC_C1SET ;
 int VIM_USAGE ;
 int abort () ;
 scalar_t__ db_eget (TYPE_4__*,int ,char**,size_t*,int*) ;
 int db_set (TYPE_4__*,int ,char*,size_t) ;
 char** fmt ;
 int inc_err (TYPE_4__*,int) ;
 scalar_t__ isdigit (char) ;
 scalar_t__ ishex (char) ;
 scalar_t__ isoctal (char) ;
 int msgq (TYPE_4__*,int ,char*) ;
 int nget_slong (long*,char*,int *,int) ;
 int nget_uslong (long*,char*,int *,int) ;
 int v_emsg (TYPE_4__*,int ,int ) ;
 int vs_refresh (TYPE_4__*,int ) ;

int
v_increment(SCR *sp, VICMD *vp)
{
 enum nresult nret;
 u_long ulval;
 long change, ltmp, lval;
 size_t beg, blen, end, len, nlen, wlen;
 int base, isempty, rval;
 CHAR_T *ntype, nbuf[100];
 CHAR_T *bp, *p, *t;


 if (vp->character == '#')
  vp->character = '+';
 if (vp->character != '+' && vp->character != '-') {
  v_emsg(sp, vp->kp->usage, VIM_USAGE);
  return (1);
 }


 if (F_ISSET(vp, VC_C1SET)) {
  if (vp->count > LONG_MAX) {
   inc_err(sp, NUM_OVER);
   return (1);
  }
  change = vp->count;
 } else
  change = 1;


 if (db_eget(sp, vp->m_start.lno, &p, &len, &isempty)) {
  if (isempty)
   goto nonum;
  return (1);
 }






 for (beg = vp->m_start.cno; beg < len && ISSPACE(p[beg]); ++beg);
 if (beg >= len)
  goto nonum;
 if (beg != vp->m_start.cno) {
  sp->cno = beg;
  (void)vs_refresh(sp, 0);
 }
 wlen = len - beg;
 if (p[beg] == '0' && wlen > 2 &&
     (p[beg + 1] == 'X' || p[beg + 1] == 'x')) {
  base = 16;
  end = beg + 2;
  if (!(ISXDIGIT(p[end])))
   goto decimal;
  ntype = p[beg + 1] == 'X' ? fmt[HEXC] : fmt[HEXL];
 } else if (p[beg] == '0' && wlen > 1) {
  base = 8;
  end = beg + 1;
  if (!((p[end]) >= '0' && (p[end]) <= '7'))
   goto decimal;
  ntype = fmt[OCTAL];
 } else if (wlen >= 1 && (p[beg] == '+' || p[beg] == '-')) {
  base = 10;
  end = beg + 1;
  ntype = fmt[SDEC];
  if (!isdigit(p[end]))
   goto nonum;
 } else {
decimal: base = 10;
  end = beg;
  ntype = fmt[DEC];
  if (!isdigit(p[end])) {
nonum: msgq(sp, M_ERR, "181|Cursor not in a number");
   return (1);
  }
 }


 while (++end < len) {
  switch (base) {
  case 8:
   if (((p[end]) >= '0' && (p[end]) <= '7'))
    continue;
   if (p[end] == '8' || p[end] == '9') {
    base = 10;
    ntype = fmt[DEC];
    continue;
   }
   break;
  case 10:
   if (isdigit(p[end]))
    continue;
   break;
  case 16:
   if ((ISXDIGIT(p[end])))
    continue;
   break;
  default:
   abort();

  }
  break;
 }
 wlen = (end - beg);
 GET_SPACE_RETW(sp, bp, blen, len + 50);
 if (end == len) {
  MEMMOVE(bp, &p[beg], wlen);
  bp[wlen] = '\0';
  t = bp;
 } else
  t = &p[beg];





 if (base == 10) {
  if ((nret = nget_slong(&lval, t, ((void*)0), 10)) != NUM_OK)
   goto err;
  ltmp = vp->character == '-' ? -change : change;
  if (lval > 0 && ltmp > 0 && !NPFITS(LONG_MAX, lval, ltmp)) {
   nret = NUM_OVER;
   goto err;
  }
  if (lval < 0 && ltmp < 0 && !NNFITS(LONG_MIN, lval, ltmp)) {
   nret = NUM_UNDER;
   goto err;
  }
  lval += ltmp;

  if (lval == 0 && ntype == fmt[SDEC])
   ntype = fmt[DEC];
  nlen = SPRINTF(nbuf, sizeof(nbuf), ntype, lval);
 } else {
  if ((nret = nget_uslong(&ulval, t, ((void*)0), base)) != NUM_OK)
   goto err;
  if (vp->character == '+') {
   if (!NPFITS(ULONG_MAX, ulval, change)) {
    nret = NUM_OVER;
    goto err;
   }
   ulval += change;
  } else {
   if (ulval < change) {
    nret = NUM_UNDER;
    goto err;
   }
   ulval -= change;
  }


  if (base == 16)
   wlen -= 2;

  nlen = SPRINTF(nbuf, sizeof(nbuf), ntype, wlen, ulval);
 }


 MEMMOVE(bp, p, beg);
 MEMMOVE(bp + beg, nbuf, nlen);
 MEMMOVE(bp + beg + nlen, p + end, len - beg - (end - beg));
 len = beg + nlen + (len - beg - (end - beg));

 nret = NUM_OK;
 rval = db_set(sp, vp->m_start.lno, bp, len);

 if (0) {
err: rval = 1;
  inc_err(sp, nret);
 }
 if (bp != ((void*)0))
  FREE_SPACEW(sp, bp, blen);
 return (rval);
}
