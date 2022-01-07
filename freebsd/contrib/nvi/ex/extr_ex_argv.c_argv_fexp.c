
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int* lastbcomm; } ;
struct TYPE_11__ {char* alt_name; TYPE_1__* frp; } ;
struct TYPE_10__ {char* name; } ;
typedef TYPE_2__ SCR ;
typedef TYPE_3__ EX_PRIVATE ;
typedef int EXCMD ;
typedef int CHAR_T ;


 int ADD_SPACE_RETW (TYPE_2__*,int*,size_t,size_t) ;
 int CHAR2INT (TYPE_2__*,char*,size_t,int*,size_t) ;
 TYPE_3__* EXP (TYPE_2__*) ;
 int E_MODIFY ;
 int F_SET (int *,int ) ;
 int MEMCPY (int*,int*,size_t) ;
 int M_ERR ;
 size_t STRLEN (int*) ;
 int msgq (TYPE_2__*,int ,char*) ;
 size_t strlen (char*) ;

__attribute__((used)) static int
argv_fexp(SCR *sp, EXCMD *excp, CHAR_T *cmd, size_t cmdlen, CHAR_T *p, size_t *lenp, CHAR_T **bpp, size_t *blenp, int is_bang)
{
 EX_PRIVATE *exp;
 char *t;
 size_t blen, len, off, tlen;
 CHAR_T *bp;
 CHAR_T *wp;
 size_t wlen;


 for (bp = *bpp, blen = *blenp, len = *lenp; cmdlen > 0; --cmdlen, ++cmd)
  switch (*cmd) {
  case '!':
   if (!is_bang)
    goto ins_ch;
   exp = EXP(sp);
   if (exp->lastbcomm == ((void*)0)) {
    msgq(sp, M_ERR,
        "115|No previous command to replace \"!\"");
    return (1);
   }
   len += tlen = STRLEN(exp->lastbcomm);
   off = p - bp;
   ADD_SPACE_RETW(sp, bp, blen, len);
   p = bp + off;
   MEMCPY(p, exp->lastbcomm, tlen);
   p += tlen;
   F_SET(excp, E_MODIFY);
   break;
  case '%':
   if ((t = sp->frp->name) == ((void*)0)) {
    msgq(sp, M_ERR,
        "116|No filename to substitute for %%");
    return (1);
   }
   tlen = strlen(t);
   len += tlen;
   off = p - bp;
   ADD_SPACE_RETW(sp, bp, blen, len);
   p = bp + off;
   CHAR2INT(sp, t, tlen, wp, wlen);
   MEMCPY(p, wp, wlen);
   p += wlen;
   F_SET(excp, E_MODIFY);
   break;
  case '#':
   if ((t = sp->alt_name) == ((void*)0)) {
    msgq(sp, M_ERR,
        "117|No filename to substitute for #");
    return (1);
   }
   len += tlen = strlen(t);
   off = p - bp;
   ADD_SPACE_RETW(sp, bp, blen, len);
   p = bp + off;
   CHAR2INT(sp, t, tlen, wp, wlen);
   MEMCPY(p, wp, wlen);
   p += wlen;
   F_SET(excp, E_MODIFY);
   break;
  case '\\':






   if (cmdlen > 1 &&
       (cmd[1] == '%' || cmd[1] == '#' || cmd[1] == '!')) {
    ++cmd;
    --cmdlen;
   }

  default:
ins_ch: ++len;
   off = p - bp;
   ADD_SPACE_RETW(sp, bp, blen, len);
   p = bp + off;
   *p++ = *cmd;
  }


 ++len;
 off = p - bp;
 ADD_SPACE_RETW(sp, bp, blen, len);
 p = bp + off;
 *p = '\0';


 *lenp = len - 1;
 *bpp = bp;
 *blenp = blen;
 return (0);
}
