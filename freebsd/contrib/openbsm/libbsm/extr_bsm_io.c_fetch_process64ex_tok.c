
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_6__ {scalar_t__ type; int * addr; int port; } ;
struct TYPE_7__ {scalar_t__ auid; scalar_t__ euid; scalar_t__ egid; scalar_t__ ruid; scalar_t__ rgid; scalar_t__ pid; scalar_t__ sid; TYPE_1__ tid; } ;
struct TYPE_8__ {TYPE_2__ proc64_ex; } ;
struct TYPE_9__ {int len; TYPE_3__ tt; } ;
typedef TYPE_4__ tokenstr_t ;


 scalar_t__ AU_IPv4 ;
 scalar_t__ AU_IPv6 ;
 int READ_TOKEN_BYTES (int *,int,int *,int,int ,int) ;
 int READ_TOKEN_U_INT32 (int *,int,scalar_t__,int ,int) ;
 int READ_TOKEN_U_INT64 (int *,int,int ,int ,int) ;

__attribute__((used)) static int
fetch_process64ex_tok(tokenstr_t *tok, u_char *buf, int len)
{
 int err = 0;

 READ_TOKEN_U_INT32(buf, len, tok->tt.proc64_ex.auid, tok->len, err);
 if (err)
  return (-1);

 READ_TOKEN_U_INT32(buf, len, tok->tt.proc64_ex.euid, tok->len, err);
 if (err)
  return (-1);

 READ_TOKEN_U_INT32(buf, len, tok->tt.proc64_ex.egid, tok->len, err);
 if (err)
  return (-1);

 READ_TOKEN_U_INT32(buf, len, tok->tt.proc64_ex.ruid, tok->len, err);
 if (err)
  return (-1);

 READ_TOKEN_U_INT32(buf, len, tok->tt.proc64_ex.rgid, tok->len, err);
 if (err)
  return (-1);

 READ_TOKEN_U_INT32(buf, len, tok->tt.proc64_ex.pid, tok->len, err);
 if (err)
  return (-1);

 READ_TOKEN_U_INT32(buf, len, tok->tt.proc64_ex.sid, tok->len, err);
 if (err)
  return (-1);

 READ_TOKEN_U_INT64(buf, len, tok->tt.proc64_ex.tid.port, tok->len,
     err);
 if (err)
  return (-1);

 READ_TOKEN_U_INT32(buf, len, tok->tt.proc64_ex.tid.type, tok->len,
     err);
 if (err)
  return (-1);

 if (tok->tt.proc64_ex.tid.type == AU_IPv4) {
  READ_TOKEN_BYTES(buf, len, &tok->tt.proc64_ex.tid.addr[0],
      sizeof(tok->tt.proc64_ex.tid.addr[0]), tok->len, err);
  if (err)
   return (-1);
 } else if (tok->tt.proc64_ex.tid.type == AU_IPv6) {
  READ_TOKEN_BYTES(buf, len, tok->tt.proc64_ex.tid.addr,
      sizeof(tok->tt.proc64_ex.tid.addr), tok->len, err);
  if (err)
   return (-1);
 } else
  return (-1);

 return (0);
}
