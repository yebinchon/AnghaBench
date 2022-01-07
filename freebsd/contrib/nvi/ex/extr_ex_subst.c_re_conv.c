
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t repl_len; int repl; } ;
typedef TYPE_1__ SCR ;
typedef int CHAR_T ;


 int GET_SPACE_RETW (TYPE_1__*,int*,size_t,size_t) ;
 int MEMCPY (int*,int ,size_t) ;
 int O_ISSET (TYPE_1__*,int ) ;
 int O_MAGIC ;
 int RE_WSTART ;
 size_t RE_WSTART_LEN ;
 int RE_WSTOP ;
 size_t RE_WSTOP_LEN ;

__attribute__((used)) static int
re_conv(SCR *sp, CHAR_T **ptrnp, size_t *plenp, int *replacedp)
{
 size_t blen, len, needlen;
 int magic;
 CHAR_T *bp, *p, *t;







 magic = 0;
 for (p = *ptrnp, len = *plenp, needlen = 0; len > 0; ++p, --len)
  switch (*p) {
  case '\\':
   if (len > 1) {
    --len;
    switch (*++p) {
    case '<':
     magic = 1;
     needlen += RE_WSTART_LEN + 1;
     break;
    case '>':
     magic = 1;
     needlen += RE_WSTOP_LEN + 1;
     break;
    case '~':
     if (!O_ISSET(sp, O_MAGIC)) {
      magic = 1;
      needlen += sp->repl_len;
     }
     break;
    case '.':
    case '[':
    case '*':
     if (!O_ISSET(sp, O_MAGIC)) {
      magic = 1;
      needlen += 1;
     }
     break;
    default:
     needlen += 2;
    }
   } else
    needlen += 1;
   break;
  case '~':
   if (O_ISSET(sp, O_MAGIC)) {
    magic = 1;
    needlen += sp->repl_len;
   }
   break;
  case '.':
  case '[':
  case '*':
   if (!O_ISSET(sp, O_MAGIC)) {
    magic = 1;
    needlen += 2;
   }
   break;
  default:
   needlen += 1;
   break;
  }

 if (!magic) {
  *replacedp = 0;
  return (0);
 }


 *replacedp = 1;
 GET_SPACE_RETW(sp, bp, blen, needlen);

 for (p = *ptrnp, len = *plenp, t = bp; len > 0; ++p, --len)
  switch (*p) {
  case '\\':
   if (len > 1) {
    --len;
    switch (*++p) {
    case '<':
     MEMCPY(t,
         RE_WSTART, RE_WSTART_LEN);
     t += RE_WSTART_LEN;
     break;
    case '>':
     MEMCPY(t,
         RE_WSTOP, RE_WSTOP_LEN);
     t += RE_WSTOP_LEN;
     break;
    case '~':
     if (O_ISSET(sp, O_MAGIC))
      *t++ = '~';
     else {
      MEMCPY(t,
          sp->repl, sp->repl_len);
      t += sp->repl_len;
     }
     break;
    case '.':
    case '[':
    case '*':
     if (O_ISSET(sp, O_MAGIC))
      *t++ = '\\';
     *t++ = *p;
     break;
    default:
     *t++ = '\\';
     *t++ = *p;
    }
   } else
    *t++ = '\\';
   break;
  case '~':
   if (O_ISSET(sp, O_MAGIC)) {
    MEMCPY(t, sp->repl, sp->repl_len);
    t += sp->repl_len;
   } else
    *t++ = '~';
   break;
  case '.':
  case '[':
  case '*':
   if (!O_ISSET(sp, O_MAGIC))
    *t++ = '\\';
   *t++ = *p;
   break;
  default:
   *t++ = *p;
   break;
  }

 *ptrnp = bp;
 *plenp = t - bp;
 return (0);
}
