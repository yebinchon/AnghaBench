
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wmsk ;
typedef int wint_t ;
typedef int wchar_t ;
typedef int uint64_t ;


 scalar_t__ ISGRAPH (int,int) ;
 int NBBY ;
 int VIS_SAFE ;
 int * do_mbyte (int *,int,int,int,int) ;
 scalar_t__ iswsafe (int) ;
 scalar_t__ iswwhite (int) ;
 int * wcschr (int const*,int) ;

__attribute__((used)) static wchar_t *
do_svis(wchar_t *dst, wint_t c, int flags, wint_t nextc, const wchar_t *extra)
{
 int iswextra, i, shft;
 uint64_t bmsk, wmsk;

 iswextra = wcschr(extra, c) != ((void*)0);
 if (!iswextra && (ISGRAPH(flags, c) || iswwhite(c) ||
     ((flags & VIS_SAFE) && iswsafe(c)))) {
  *dst++ = c;
  return dst;
 }


 wmsk = 0;
 for (i = sizeof(wmsk) - 1; i >= 0; i--) {
  shft = i * NBBY;
  bmsk = (uint64_t)0xffLL << shft;
  wmsk |= bmsk;
  if ((c & wmsk) || i == 0)
   dst = do_mbyte(dst, (wint_t)(
       (uint64_t)(c & bmsk) >> shft),
       flags, nextc, iswextra);
 }

 return dst;
}
