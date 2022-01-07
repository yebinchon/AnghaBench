
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_5__ {int size; int ad_type; int s; int ms; int * addr; int e_mod; int e_type; int version; } ;
struct TYPE_6__ {TYPE_1__ hdr32_ex; } ;
struct TYPE_7__ {int len; TYPE_2__ tt; } ;
typedef TYPE_3__ tokenstr_t ;




 int READ_TOKEN_BYTES (int *,int,int *,int,int ,int) ;
 int READ_TOKEN_U_CHAR (int *,int,int ,int ,int) ;
 int READ_TOKEN_U_INT16 (int *,int,int ,int ,int) ;
 int READ_TOKEN_U_INT32 (int *,int,int,int ,int) ;
 int bzero (int *,int) ;

__attribute__((used)) static int
fetch_header32_ex_tok(tokenstr_t *tok, u_char *buf, int len)
{
 int err = 0;

 READ_TOKEN_U_INT32(buf, len, tok->tt.hdr32_ex.size, tok->len, err);
 if (err)
  return (-1);

 READ_TOKEN_U_CHAR(buf, len, tok->tt.hdr32_ex.version, tok->len, err);
 if (err)
  return (-1);

 READ_TOKEN_U_INT16(buf, len, tok->tt.hdr32_ex.e_type, tok->len, err);
 if (err)
  return (-1);

 READ_TOKEN_U_INT16(buf, len, tok->tt.hdr32_ex.e_mod, tok->len, err);
 if (err)
  return (-1);

 READ_TOKEN_U_INT32(buf, len, tok->tt.hdr32_ex.ad_type, tok->len, err);
 if (err)
  return (-1);

 bzero(tok->tt.hdr32_ex.addr, sizeof(tok->tt.hdr32_ex.addr));
 switch (tok->tt.hdr32_ex.ad_type) {
 case 129:
  READ_TOKEN_BYTES(buf, len, &tok->tt.hdr32_ex.addr[0],
      sizeof(tok->tt.hdr32_ex.addr[0]), tok->len, err);
  if (err)
   return (-1);
  break;

 case 128:
  READ_TOKEN_BYTES(buf, len, tok->tt.hdr32_ex.addr,
      sizeof(tok->tt.hdr32_ex.addr), tok->len, err);
  break;
 }

 READ_TOKEN_U_INT32(buf, len, tok->tt.hdr32_ex.s, tok->len, err);
 if (err)
  return (-1);

 READ_TOKEN_U_INT32(buf, len, tok->tt.hdr32_ex.ms, tok->len, err);
 if (err)
  return (-1);

 return (0);
}
