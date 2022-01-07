
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_6__ {int no; int * list; } ;
struct TYPE_5__ {TYPE_2__ grps; } ;
struct TYPE_7__ {int len; TYPE_1__ tt; } ;
typedef TYPE_3__ tokenstr_t ;


 int READ_TOKEN_U_INT16 (int *,int,int,int ,int) ;
 int READ_TOKEN_U_INT32 (int *,int,int ,int ,int) ;

__attribute__((used)) static int
fetch_newgroups_tok(tokenstr_t *tok, u_char *buf, int len)
{
 int i;
 int err = 0;

 READ_TOKEN_U_INT16(buf, len, tok->tt.grps.no, tok->len, err);
 if (err)
  return (-1);

 for (i = 0; i<tok->tt.grps.no; i++) {
  READ_TOKEN_U_INT32(buf, len, tok->tt.grps.list[i], tok->len,
      err);
  if (err)
   return (-1);
 }

 return (0);
}
