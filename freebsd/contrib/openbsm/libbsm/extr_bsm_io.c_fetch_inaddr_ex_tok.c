
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_6__ {scalar_t__ type; int * addr; } ;
struct TYPE_5__ {TYPE_2__ inaddr_ex; } ;
struct TYPE_7__ {int len; TYPE_1__ tt; } ;
typedef TYPE_3__ tokenstr_t ;


 scalar_t__ AU_IPv4 ;
 scalar_t__ AU_IPv6 ;
 int READ_TOKEN_BYTES (int *,int,int *,int,int ,int) ;
 int READ_TOKEN_U_INT32 (int *,int,scalar_t__,int ,int) ;

__attribute__((used)) static int
fetch_inaddr_ex_tok(tokenstr_t *tok, u_char *buf, int len)
{
 int err = 0;

 READ_TOKEN_U_INT32(buf, len, tok->tt.inaddr_ex.type, tok->len, err);
 if (err)
  return (-1);

 if (tok->tt.inaddr_ex.type == AU_IPv4) {
  READ_TOKEN_BYTES(buf, len, &tok->tt.inaddr_ex.addr[0],
      sizeof(tok->tt.inaddr_ex.addr[0]), tok->len, err);
  if (err)
   return (-1);
 } else if (tok->tt.inaddr_ex.type == AU_IPv6) {
  READ_TOKEN_BYTES(buf, len, tok->tt.inaddr_ex.addr,
      sizeof(tok->tt.inaddr_ex.addr), tok->len, err);
  if (err)
   return (-1);
 } else
  return (-1);

 return (0);
}
