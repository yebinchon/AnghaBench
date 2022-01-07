
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SCR ;
typedef char CHAR_T ;


 int GET_SPACE_RETW (int *,char*,size_t,size_t) ;
 int L (char*) ;
 scalar_t__ STRCHR (int ,char) ;

__attribute__((used)) static int
re_tag_conv(SCR *sp, CHAR_T **ptrnp, size_t *plenp, int *replacedp)
{
 size_t blen, len;
 int lastdollar;
 CHAR_T *bp, *p, *t;

 len = *plenp;


 *replacedp = 1;
 GET_SPACE_RETW(sp, bp, blen, len * 2);

 p = *ptrnp;
 t = bp;


 if (len > 0 && (p[len - 1] == '/' || p[len - 1] == '?'))
  --len;


 if (len > 0 && p[len - 1] == '$') {
  --len;
  lastdollar = 1;
 } else
  lastdollar = 0;


 if (len > 0 && (p[0] == '/' || p[0] == '?')) {
  ++p;
  --len;
 }


 if (p[0] == '^') {
  *t++ = *p++;
  --len;
 }






 for (; len > 0; --len) {
  if (p[0] == '\\' && (p[1] == '/' || p[1] == '?')) {
   ++p;
   --len;
  } else if (STRCHR(L("^.[]$*"), p[0]))
   *t++ = '\\';
  *t++ = *p++;
 }
 if (lastdollar)
  *t++ = '$';

 *ptrnp = bp;
 *plenp = t - bp;
 return (0);
}
