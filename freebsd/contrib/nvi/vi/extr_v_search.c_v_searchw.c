
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int VICMD ;
struct TYPE_2__ {size_t klen; int * keyw; } ;
typedef int SCR ;
typedef int CHAR_T ;


 int FORWARD ;
 int FREE_SPACEW (int *,int *,size_t) ;
 int GET_SPACE_RETW (int *,int *,size_t,size_t) ;
 int * L (char*) ;
 size_t MAX (int,int) ;
 int MEMCPY (int *,int *,int) ;
 int * RE_NWSTOP ;
 int RE_NWSTOP_LEN ;
 int * RE_WSTART ;
 int RE_WSTART_LEN ;
 int * RE_WSTOP ;
 int RE_WSTOP_LEN ;
 int SEARCH_SET ;
 TYPE_1__* VIP (int *) ;
 scalar_t__ inword (int ) ;
 scalar_t__ is_special (int ) ;
 int v_search (int *,int *,int *,size_t,int ,int ) ;

int
v_searchw(SCR *sp, VICMD *vp)
{
 size_t blen, len;
 int rval;
 CHAR_T *bp, *p;


 len = VIP(sp)->klen + MAX(RE_WSTART_LEN, 1)
     + MAX(RE_WSTOP_LEN, RE_NWSTOP_LEN);
 GET_SPACE_RETW(sp, bp, blen, len);
 p = bp;


 if (inword(VIP(sp)->keyw[0])) {
  MEMCPY(p, RE_WSTART, RE_WSTART_LEN);
  p += RE_WSTART_LEN;
 } else if (is_special(VIP(sp)->keyw[0])) {
  MEMCPY(p, L("\\"), 1);
  p += 1;
 }

 MEMCPY(p, VIP(sp)->keyw, VIP(sp)->klen);
 p += VIP(sp)->klen;

 if (inword(p[-1])) {
  MEMCPY(p, RE_WSTOP, RE_WSTOP_LEN);
  p += RE_WSTOP_LEN;
 } else {





  MEMCPY(p, RE_NWSTOP, RE_NWSTOP_LEN);
  p += RE_NWSTOP_LEN;
 }

 len = p - bp;
 rval = v_search(sp, vp, bp, len, SEARCH_SET, FORWARD);

 FREE_SPACEW(sp, bp, blen);
 return (rval);
}
