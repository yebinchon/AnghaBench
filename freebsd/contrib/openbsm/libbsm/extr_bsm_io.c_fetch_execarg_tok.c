
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t u_int32_t ;
typedef char u_char ;
struct TYPE_5__ {size_t count; char** text; } ;
struct TYPE_6__ {TYPE_1__ execarg; } ;
struct TYPE_7__ {int len; TYPE_2__ tt; } ;
typedef TYPE_3__ tokenstr_t ;


 size_t AUDIT_MAX_ARGS ;
 int READ_TOKEN_U_INT32 (char*,int,size_t,int,int) ;

__attribute__((used)) static int
fetch_execarg_tok(tokenstr_t *tok, u_char *buf, int len)
{
 int err = 0;
 u_int32_t i;
 u_char *bptr;

 READ_TOKEN_U_INT32(buf, len, tok->tt.execarg.count, tok->len, err);
 if (err)
  return (-1);

 for (i = 0; i < tok->tt.execarg.count; i++) {
  bptr = buf + tok->len;
  if (i < AUDIT_MAX_ARGS)
   tok->tt.execarg.text[i] = (char*)bptr;


  while (bptr && (*bptr != '\0')) {
   if (++tok->len >= (u_int32_t)len)
    return (-1);
   bptr = buf + tok->len;
  }
  if (!bptr)
   return (-1);
  tok->len++;
 }
 if (tok->tt.execarg.count > AUDIT_MAX_ARGS)
  tok->tt.execarg.count = AUDIT_MAX_ARGS;

 return (0);
}
