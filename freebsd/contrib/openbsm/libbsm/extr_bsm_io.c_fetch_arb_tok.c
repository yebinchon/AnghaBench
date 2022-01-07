
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_5__ {int howtopr; int bu; int uc; int data; } ;
struct TYPE_6__ {TYPE_1__ arb; } ;
struct TYPE_7__ {int len; TYPE_2__ tt; } ;
typedef TYPE_3__ tokenstr_t ;



 int AUR_BYTE_SIZE ;

 int AUR_INT32_SIZE ;

 int AUR_INT64_SIZE ;

 int AUR_SHORT_SIZE ;
 int READ_TOKEN_U_CHAR (int *,int,int,int ,int) ;
 int SET_PTR (int *,int,int ,int,int ,int) ;

__attribute__((used)) static int
fetch_arb_tok(tokenstr_t *tok, u_char *buf, int len)
{
 int err = 0;
 int datasize;

 READ_TOKEN_U_CHAR(buf, len, tok->tt.arb.howtopr, tok->len, err);
 if (err)
  return (-1);

 READ_TOKEN_U_CHAR(buf, len, tok->tt.arb.bu, tok->len, err);
 if (err)
  return (-1);

 READ_TOKEN_U_CHAR(buf, len, tok->tt.arb.uc, tok->len, err);
 if (err)
  return (-1);




 switch(tok->tt.arb.bu) {
 case 131:

  datasize = AUR_BYTE_SIZE;
  break;

 case 128:
  datasize = AUR_SHORT_SIZE;
  break;

 case 130:

  datasize = AUR_INT32_SIZE;
  break;

 case 129:
  datasize = AUR_INT64_SIZE;
  break;

 default:
  return (-1);
 }

 SET_PTR(buf, len, tok->tt.arb.data, datasize * tok->tt.arb.uc,
     tok->len, err);
 if (err)
  return (-1);

 return (0);
}
