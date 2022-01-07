
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
typedef int u_char ;
struct TYPE_5__ {int dest; int src; int chksm; int prot; int ttl; int offset; int id; int len; int tos; int version; } ;
struct TYPE_6__ {TYPE_1__ ip; } ;
struct TYPE_7__ {int len; TYPE_2__ tt; } ;
typedef TYPE_3__ tokenstr_t ;


 int READ_TOKEN_BYTES (int *,int,int *,int,int ,int) ;
 int READ_TOKEN_U_CHAR (int *,int,int ,int ,int) ;

__attribute__((used)) static int
fetch_ip_tok(tokenstr_t *tok, u_char *buf, int len)
{
 int err = 0;

 READ_TOKEN_U_CHAR(buf, len, tok->tt.ip.version, tok->len, err);
 if (err)
  return (-1);

 READ_TOKEN_U_CHAR(buf, len, tok->tt.ip.tos, tok->len, err);
 if (err)
  return (-1);

 READ_TOKEN_BYTES(buf, len, &tok->tt.ip.len, sizeof(uint16_t),
     tok->len, err);
 if (err)
  return (-1);

 READ_TOKEN_BYTES(buf, len, &tok->tt.ip.id, sizeof(uint16_t),
     tok->len, err);
 if (err)
  return (-1);

 READ_TOKEN_BYTES(buf, len, &tok->tt.ip.offset, sizeof(uint16_t),
     tok->len, err);
 if (err)
  return (-1);

 READ_TOKEN_U_CHAR(buf, len, tok->tt.ip.ttl, tok->len, err);
 if (err)
  return (-1);

 READ_TOKEN_U_CHAR(buf, len, tok->tt.ip.prot, tok->len, err);
 if (err)
  return (-1);

 READ_TOKEN_BYTES(buf, len, &tok->tt.ip.chksm, sizeof(uint16_t),
     tok->len, err);
 if (err)
  return (-1);

 READ_TOKEN_BYTES(buf, len, &tok->tt.ip.src, sizeof(tok->tt.ip.src),
     tok->len, err);
 if (err)
  return (-1);

 READ_TOKEN_BYTES(buf, len, &tok->tt.ip.dest, sizeof(tok->tt.ip.dest),
     tok->len, err);
 if (err)
  return (-1);

 return (0);
}
